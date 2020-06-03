Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8461EC9A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 08:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FEK2v/Em5V1jQOBYWDNRX37Vy/Lf18GFKNQ4cOq3hVk=; b=sTLSKywuR5gXRXnTZ5XSl8Ua2
	MDn90RymAzXM9ZmCtaA4FY1wud1zWhEtYJT74LWYKT1JPyaKbw/3R0Z8fK0aOy4AwzIJ3/rgG07r9
	zTnYbOhL/e5aVB7k0XeEX0dIHP4l3ifotpsVD3OajEa/t7Y10uEmzpBUnIpGQfdGJp8lJaYAEBFc3
	4KZ5l9u5AuCgJPy3FFjFTPTRJe0Hzt/5DEWjHTT9Og2AJYAmlR+evMbnFJbXyvdGTSGGdt4t2U/gc
	dDFV3OMdUWuTSAx3LJ16sW8ivcHdf+F+lb1b01x3tFYnqoy9iVt3dNUOmd2sUeANmn2sEU24ssreW
	+FNEykIRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgN6w-00019N-RZ; Wed, 03 Jun 2020 06:42:50 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgN6p-00018c-PA
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 06:42:45 +0000
IronPort-SDR: 6F7ADZfv4PoixNVrSOenf02qi5WaiqPNdPr/4HUjr8Djud8wQdtaLEQoSC4VLzgl0ZwOnbDDrA
 RLzEtNtIsAIg==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 23:42:42 -0700
IronPort-SDR: X3xmvGdWhNwoPfbcOyxhPF8pK2p5tpSCRZ++CmTbLBEfIIfHZXkGNuHiqRz90xMneUpOF4yS2C
 AZvQoJL3lzIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,467,1583222400"; 
 d="gz'50?scan'50,208,50";a="378000666"
Received: from lkp-server02.sh.intel.com (HELO 8f84dc34deca) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 02 Jun 2020 23:42:40 -0700
Received: from kbuild by 8f84dc34deca with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jgN6l-00001c-Dj; Wed, 03 Jun 2020 06:42:39 +0000
Date: Wed, 3 Jun 2020 14:42:17 +0800
From: kbuild test robot <lkp@intel.com>
To: Andrei Vagin <avagin@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/6] arm64/vdso: Add time namespace page
Message-ID: <202006031443.5QBmxD9t%lkp@intel.com>
References: <20200602180259.76361-4-avagin@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="CE+1k2dSO48ffgeK"
Content-Disposition: inline
In-Reply-To: <20200602180259.76361-4-avagin@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_234243_839445_81F04772 
X-CRM114-Status: UNSURE (   1.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kbuild-all@lists.01.org,
 Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org,
 Andrei Vagin <avagin@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--CE+1k2dSO48ffgeK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andrei,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on soc/for-next]
[also build test WARNING on arm/for-next xlnx/master kvmarm/next v5.7]
[cannot apply to arm64/for-next/core next-20200602]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Andrei-Vagin/arm64-add-the-time-namespace-support/20200603-020504
base:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git for-next
config: arm64-allnoconfig (attached as .config)
compiler: aarch64-linux-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> arch/arm64/kernel/vdso.c:93:19: warning: no previous prototype for 'arch_get_vdso_data' [-Wmissing-prototypes]
93 | struct vdso_data *arch_get_vdso_data(void *vvar_page)
|                   ^~~~~~~~~~~~~~~~~~

vim +/arch_get_vdso_data +93 arch/arm64/kernel/vdso.c

    91	
    92	
  > 93	struct vdso_data *arch_get_vdso_data(void *vvar_page)
    94	{
    95		return (struct vdso_data *)(vvar_page);
    96	}
    97	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--CE+1k2dSO48ffgeK
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICCoh114AAy5jb25maWcAnDxdc+M2ku/5Fayk6ip5mIks2Rr7ruYBIkEREb+GIGV5XliK
Lc+oYkteSU4y//66AVIEyQbtu+xmd4bdABqN/kZDv/z0i8NeT/vn9Wl7v356+uF82+w2h/Vp
8+A8bp82/+N4iRMnucM9kX8E5HC7e/339/XheXrpXH389HH04XA/dRabw27z5Lj73eP22ysM
3+53P/3yE/z3F/j4/AIzHf7bWa8P99+nlx+ecI4P3+7vnV/nrvubc/Nx8nEEuG4S+2Jeum4p
ZAmQzz/qT/CXcskzKZL4881oMhrVgNA7fx9PLkfqn/M8IYvnZ/DImD5gsmQyKudJnjSLGAAR
hyLmDWhWiNDLRcTLnM1CXsokyxtoHmSceTDIT+B/AEUuAKg2P1fcfHKOm9PrS7NFEYu85PGy
ZBnsQUQi/zwZI68qSpIoFbBMzmXubI/Obn/CGc6bTlwW1vv6+edmnAkoWZEnxGC1lVKyMMeh
1UeP+6wI8zJIZB6ziH/++dfdfrf5zZhb3smlSF1zxobeLJGyjHiUZHcly3PmBiReIXkoZgRR
AVty4IUbANUgaLAWbCSsmSiyL87x9c/jj+Np89wwcc5jngkQluxLmWbJzDgvEySD5NYOKUO+
5CEN577P3Vwgab5fRvpYzxRnHuDIUt6WGZc89hoYjvWSiImY+lYGgme417v+qpEUiGkF9KYN
WOyBoFQzt4Yiup9kLvcqARXxvIHKlGWSVyN+cTa7B2f/2OE0xZMIxERUy2Z9OpWOLJvz64Bd
kNAFMDzOZQNU546alwt3Uc6yhHkuk/ng6BaaEpJ8+7w5HCk5Cb6WKYxPPOGqvVaf4wQhAvZB
yqoG+0UY2sEkJBDzAEVC8SKTbZyKzz1ia1rTjPMozWF6ZX7Ok9bfl0lYxDnL7silKywTpk1w
Wvyer49/OSdY11kDDcfT+nR01vf3+9fdabv71nBLHQIMKJnrJrCWlprzEkuR5R0wng9JDsqL
EogGl8STbqCElGcRC3ETUhYZfSqpFCRD37FDw1wB+UImIcvBTvaYlbmFI/tSlANvS4CZzIC/
lnwFwkVZaamRzeHtTzha5qAnaO+jJG5DYg48kXzuzkKhpPy81zaBBrsX+g8ELbUGaU4rPar1
Rt5/3zy8gn92Hjfr0+thc1Sfq7UIaEttZZGm4AtlGRcRK2cMXK7bsjOVUxVxfjG+7uj8efAZ
2hzRPEuKVNLeJuDuIk1gEKpZnlhERe8VvaCai8TJeMhoVZqFC/CKS+WpM49GSRJQBRvLYeNJ
CtIvvnI0w2iC4P8i4E9LsbtoEv5ACRNY1DwEYXN5ilIL8sRcw+FpKTQnVoYaHG5GM2fOc3Ro
ZWWqaaQ76ctBDF87AlpVEylWpBE8Wys4wgXN2oK2FDMGPstqk/0i5ysSwtPEtkcxj1no0yes
iLfAlB+ywGQAsRAJYSKhTWVSFpnNPjJvKWDf1UHQzIQFZyzLhOW8FzjwLqLHzlKfOmVTVW8Z
aFsdJSL+H6IlbShoCtjmSNfDN1TCgjF4dFDelkGV/AsxHkZxz+OeGfdAVIYqVZ6jiUau3IvR
Zc+sVylKujk87g/P6939xuF/b3bgIxiYOhe9BLhk7S6reZrpSZ/zzhkN3xnp6UrlDW1qgcE/
AyZntGrIkFERtAyLmckEGSYz63g4h2zO6/O0o/ngtND7lBmoeUJLdBsRw2LwNTa1KHwfotWU
weIgbJCtgPW2zFrMlJ+GMDUXjNZdCPp9Efa0pjqedurViGI0vWzkaHo5E0akGUWF6aMAVRMr
A+Hnny/GbRD8Ja9Aly1RjyKWllnslTA5CD0E7BfXQwhs9XlsmaGWhvNEF+/Ag/kupjUeRKoi
QT8L31MjAYAsbaG8SO2HjdQhDPkcQzF0sqCrSxYW/PPo34fN+mFk/GMkpAuPp/2J9PwQB/oh
m8s+vI5LglsOUTMV8ssiIr4ySCMzlqMIgwM35f4rBM6lFzFSYGrgZGwzUjxW+X2VygZJnobF
vBO29HAy+NPScMYyMvi84FnMwzJKPA4xnRnl+eAeOcvCO/g7ztZA0rkuM6jcVH6e0FFToZLe
biIFH91ygYa1BG94To/Sp/UJzRTs+GlzX9VnGg+jUm8XIwvaKGmEuQgtDraiLF6JgeFhKmI6
VlDwmRuNrydXgwilwP0NoPAMDMIAXOSYKQ8gZG4kc9p06tNf3cXJAJMWEzsMZBWsvsvSAS6E
8wva8GsnKroJUMsacE+AVgyMj7hMBnYfLfmsGACvBlj/xbV4CAXNOAsHKctAtyUbYCyc+8IN
BB3Ia/lr63UHyFmeW0JVjQDGKheri9EAyl38pQCLRvsshZLzeUYbHz1Dakkm9OCgiL3B2TXC
wDaLWKSBLQpUGEvIFTDFtmOs0M7awV8HTMBX4FDUOaLKHxMWyAzM/Cb7VJ/BxTqbw2F9Wjv/
7A9/rQ8QTz0cnb+3a+f0HVL8JwiuduvT9u/N0Xk8rJ83iNW2aeijeQanWkTl9Xg6ubixEN5G
/PRexMvR9F2IFzeXn2xH1kKcjEefbPavhXg5uXwXjRej8eWni+v3YF5Mr67G76Hy4moyuhnb
rFwLc3w9vR59eg8msHwyfRfm5XQyHr+HSRdXl2Mbl1y2FIBSo47HEwvfu4gTmPVdiJ8ur6bv
QZyMLi4Gl85X42ZWy3bQ9JY+CxdJZhz9iD4jC/LAzF88H2R9dMYejaY0yTJxIYKAqKOxlFjO
E90Eqk7iwJmFAqOfMx3Ti+lodD2i5ZCinEOud2GpBkCOKouGatjk6II0Tf8/W9NOBi4XKlVo
ZaIacjGtQANCO70kcFoYS6aD+8lNf4Uadnn91vDPk5tuelMP7Sc+esTldbtyOsOEPIZAIyYW
Q4RQoKOtcFo5qarIRXQMoYEyokqpcYYTy8/jq6khPTo4RwhdoS/aWcB5WMix4qiSAZO64Cuq
ATXiazm+GnVQJyM6TtCz0NMA/SM6lPcg7JorAVBpcbdOqu5qIEOoUg8ruErou3Aecjev8xVM
RMIOBmRnOTV9cy2X+jFmgcIowcg72WwgKOY8D2d+NxtRdSMElmkEpxuwrEs9loVcBodf4pWr
qn/S+ZZMQbDUNGleFbAb4eEuJsB0lYBlDG8tBoHvuqdY8BV3IW2zRJFuxmRQeoWFjhWnFEbd
0GHGruQxySC6wxy/KazFmOFXSSQk+Dy0yJ0qvED6wmKVBEIm4NqKKxUuD8cQDCLWkGWSckZH
rFnisZypauy5MqiPyhbhquluyzyfZSPgvC0PQbSczedYvfe8rGQzOuXRJY9eoQ8m+Pv644WD
zQbbE0Sar1gFal1utJYKbkvmezNb7qJN4RCty4DbvMoQIQax43cTWzC6flzRaS07KzDIJ6Sv
+dBe3JgO3t+g09jL5N17SfMMr2cCyo3oW6OzNCeg+MyFHNGwbRUOFvARUGSxEhfIbAz7IRUO
jO19c31RxnyORaSMYTUs5+Yl2xubMTZ8+e4Ns6gg+N9a0DqZseDVuxfko3Qg26SKui1irAv1
lHppSxfVOUteeEkZR7QaazLw/gtvd2zCAI5IVSxRFpTNQv+T8bl5Zt1MUjFktofZ9i+Ybx6N
HqPIUx0+ZvcM9+m75dYMupi2/2dzcJ7Xu/W3zfNmZ87fuKRCphAC0V4nIrZZRQRqFF6eSaF9
cZNA21at7/grjOiMcW7BAph4eNqY9KlL8N7dXXOdrgech/uHzX9eN7v7H87xfv2kOwZac/lZ
++qmNRcx2gT36FaT+9vD8z/rw8bxDhB5H7ryXUqPl6o+7UOiQacAIotuIeTA2AfcKBWU6QgH
JotctxV3RSC3rij9WzPOmCfJHEKRet6e78k33w5r57Em/EERbt6nWxBqcG/LzdIYpRQQgX2l
uxbq2w5DYzcfHjYvMLFFQP+AQKUM2YxTl36KL9z3hSvwwqqIYeV5jB7ZdVsWViEuupVo/RWs
Mgnwi1iVmjE1A0UW8R9c/b2DBgaDCkXVnUKQJIsO0IuYupER8yIpjCXPvQ+wXRT4qhuKaPlC
IF4UQziZFykRp0Kwlgv/DvLcInOpQHbBeao7BgggzFoF4RagJzIVqJvXNMa+dZehzLMCkG4D
kfOqM6SFKiMM8asmwC7nwWDKEuyttqXVYZYs7TIa72Fth4Yti9aBbtg9FnWLiutS3/HauKIF
42Zq242YDkNVLwc267Vu80pw8AGsoe9T8JqSBGPDDYVSHY8WxlIyH3YYpSs3mHeJqdSjOh3M
5Lqc0eN0j6YF5iWFJf+qEhxMPnKz787AQC6GnHX53/aa/fCp7VS7fWdtsM1QoNph1QdVc9Fq
/1FgS89YB4voFrOof4wZL68SS4LV+tQw6Vy2dAn0osDkH6QOkh9fSQyhigpUByXU1K3b284E
bVjn2rfVRZEnqZfcxnpEyO6SoqvLbpLe1Wqfh8ZKbogXmTNgNnghr1Vyqu6BJ2NYX7HT7vTw
LgDXVmfc6vE7fx3q5QBRhxSzTk2z25V5t2wFdYfrM2njNPRVjdBZGZBFCTjAyRiPETsJKnOn
vaGbLD/8uT5uHpy/dFD4ctg/bp9anY5nUhC7aiZQfQlm0DU0U4sibFHHepSIW+dhfB7sUnjD
b9dLqQYoGSGRRpGgEmwyBpphrcR2jrrPvZQptq1nd1VZ5Q2MchYMIL0xx/smaHcyW1EkW3aN
tYlWxG8QoxGGyalwhglqkKqORBpXabKdpjPYSlGDYaWnhWJnkEIbYpCBMEzOWwzqIA0y6DaD
qGaAQw3cSpOBYiWpjWNnksYb4pKJ8QZJb/Gpi9Vj1KCyvqWndhUd1M5hxXxbJ9/QtrcU7Z06
ZlevQc0aVqq39WlIld7QorcU6J26M6A2wxrzhrK8Q08GVeQt7XhTMd6rE+1rFJZDzOaWkJwb
QR82BWsJguQFAi4zfM5uJY9sQLWoBaZ7LcAXfyl4gXE/oCG+EaTZId3B2S09tPf9HLHESBHk
eCFLU4ymq8InXgWReWnV3Qv8hAFqHypM4v9u7l9P6z+fNuqxn6P6WE+tKsFMxH6E1w4+HV1o
sHQzkdI3LBVGJKTl7RicZ//OpIqObAQqCqPN8/7wwygb9ct89NVXUx+q7r0iFheMKoM0V2sa
xQhxa0gnMK2WStWbsJzAxwpwBn+gQEtdp2ru4Zo8rItjC+t9JvNy3qteYGFCdV93b87anY4k
C9S1m7py07ewl51sw+0WpIzbtTnaMFRO251aJOZZr6JVDw/upL4Cys+Nus1lnKSKqHVypdgY
CX0l8PlydDOlLUa1fZ+JsGi3orchJO1UKkrLOOTlsbrkpMG2dtU0SejO56+zgq4sf1W5QbtD
ss5EqjKXajktBaidTo7PY4F3PMvaRQz1/mUoC0xVE+6yMxXYGMz38VaFzkpAQssZj90gYtlg
lonzy5S7grXSMrvuGw0AnKJcVzabJwzKlHibv7f3ZqH5TEZUsmjGOkqeuqK1W5e+2Uhdl7Xb
/ZpS7fa+Ws1J+qXZQj8TCHiYWjr5gOV5lPo0c4HtscewRkCTlenpz9Vx9SS4R+a5Fv20Xz9U
Vezabt6Cc2S9TsVuEbsaaFTtQTRv1bMq2uqfN4fdEF4mltbdKwS+zCxJr0bA59PVNKXu0R5Q
C1WfKvLE8pIYwcsihL+wmQCLKDhRYtYFqiRNwmR+16oi0EeuL6hej86Dkr+249WNyOVcyBlM
THck172cxDO0xpAFAk6Yrj6YaxvKGVu6Q6Ocet3j5cbFSeKbmpH42JCaW96xAxQ9cN4qucJH
baFIUO+GF761AsfEV8+xsyV2GinvbBKjYybL41mWoU/o6UEMHteRry8v+8PJvMppfdcByfZ4
Tx0lCHp0h2SS64IVDBN88Foi2cK1iLTMGH23v8InMBDhej6nI6x0mbJYWKKvMblniBayJHKO
xq5rahWkvJm4qykpUp2h1bXYv+ujI3bH0+H1Wb2QOn4HA/HgnA7r3RHxnKftbuM8AAO3L/jH
9p3Z/3m0vi3Htr2146dzZty47f/ZoV1ynvf4rtX5FW8mt4cNLDB2f6svTMXutHlyIJdw/ss5
bJ7Uz2EQzFgmqVW1hqYw2OkGCTm8JUv6oa4rRfXFoKWWDgBifGsaHWpA241h/04KaoYPU2tX
KHYvr6f+OmeKRZwWfYEJ1ocHxV/xe+LgkPZdOD6/p+MAFvGuBJ43QE3asJcgU68JwrG+h6On
VDHPaeVHClmoXFPvQOuNp9H5hw/otqrboXdyGCRZunNyF/5Nrdod3tlkrL/VZqAmBWLUApwg
PlXue2x93mOXPOaxS4u1gW5gTyxNnSkdGcnU0gwSWJ63pO234LoLI0+d+6f9/V8G/dp67VTG
COkD/toI/hgAhIK3SbbAjEJdikCEFGHi7Jz2MN9Gd/k+PGzRLa+f9KzHj6YR6i9mECdiN8/o
SH2eiqTzmydn2C3duJwmtxCwsCXVC6xh6OFayZDxWb2JZ7Z2RwPP/srDxMLKgS2766HpT4lP
1wrQYUaAr97NYy5u3R+mZ+Fdf4P6u47uaJI8plFpPcN40A6eQbzBIeXz5PjTNd1l2UKhT69G
mX0Zf1qt6KcybsCyOewnYqvrG0ubfnAbWfhe/VAGLVIsdwMvIRN5iCNbbUXNdwJ7BkkpiT7r
ZKs68nl9Om0fX3fqWU9tlR/6bTuR75VYcgkhuuMr24OxBisIXY+2LIgToUGjU2cEB2J6Ob4o
08gS+wS5Cy5QCpc+AJxiwaM0pDNtRUA+ndzQr1YQLKOr7oODOhGara5GI5UF2UfbNQ/BuYDM
dDK5WpW5dNkAl/Iv0eqajtUGj81wJXxehNan2urRYV1R6Se7h/XL9+39kfIxXhb18PEphum3
jRcaZx/XDC8zyLB1lXjGmt808fGNhvPn6+MjuEavHwX4M5Id5DCdo63v/3rafvt+gmAORHIg
PAIo/vCYxJ5+DOYtNsJdhPjgeQC1ztDeWPmcYXb5bCh4UsRU3laAQUgCV/QebBjw5sV2U5yA
z0WY9pJKA3yu3gSu1xnaO3D8pmL4xlycv6fffxzxZ+mccP0Dg5y+QYkhAscVVy4XS5LXNbkk
dwcWac8wZ96c0z41v0stiRcOzBJ8unArcstPokWW5zDgKiX+FBPtSTn+bplnadtXvVlCVSnu
iAPiHnOpc81yV4sjHb6ise1lp7p4FrFZ4ZM9sPgbH9b3EnpciXUZOEdsrBtCCzjr/h5QdYid
9Q1OFCtPyNSW8BeWnES1K+myEc0LRBAJHFFMvzxaein18miJv65XemnrTZT+2J2qKifcH/bH
/ePJCX68bA4fls63183x1LI652xxGNU4kpzNbbX4eRJ6vpAWQQVXgr/zV1qE3Q0g7efndNL2
KzVhyOJkdUYj2OSGC0zDwiRZFN2OQIBh+RJr7kY3lPr1rKr1sP7JyWdwaK6K133qcTBOFEiP
Vi8EfkkyQddrmuUGQmgDyRcrrEVFXWmrcziaVjMQrK8QexKiB8n966EVbtWGCX+9SBfkWl86
FU5V41aFS4SastmGlHyZyzzjljKUL8PzU0s2Gl1fXdNvRMlHnyP1H9qctV8+X13fjGlECPOy
BH8gAPKxfHpJu3iSY8YcTISzhA7aRYINo7Y4J9s870+bl8P+nnJTWH3Oef+nK+pfdOsP1pO+
PB+/kfOlkaztED1ja2QnFrgVROu6BNp+leo35ZwE5PH79uU35/iyud8+ngvXzeP856f9N/gs
/7eya2lu44bBf8WTUzvjurHTaXPxYb0PacerXWkfkt2LRpEUR5NY8sh2J+mvLwCSWj6AdXpo
mgggl08QAIGPh9hpntHWGLIqBxVuN2KxkKq0r+NhtVkfHoNyp07FPG6H0aG48sq3ezf9PTtu
t5iVsD2bHY6w54WPzLo8jkFHGgUYJsYf/EZdVNnuYnIndT+gEXH2uvoGbQ87r0uxdHds2jyY
7TuMYPwu9VW7lOdxx/aUK3xyOv7UMrIsdsxanYfJI0ZZuWtFI4guaPmtKpzs00VocKBbfg2t
DH2qQEFx4krKUR4HP1D6ZllfX/q/zz+EvPMPy9zFK4vAGs65G1vCvqKYe3Wfajt3g2ZbvZ9i
PL3kxlT+GvhHC6ppwTgEp+N7B/+yVw/0LRcysKM7vh84ERG857YqI9SKrwbrAGs2LeN0CQYn
Xq2/yZcMVYbHUg4G8GTmWx8O2wQO6QL+BLNmsLrpXbS8+lhO0FEp3LbYXNhXkQtzl+DMDCwA
43F05sEqig6sOOKvTicx38c6CvX2aL85HnYbJ62qTOoqT9j2GHZLM4/4k7L0Pd3qimCBFzbr
3f6Bs5ubllcr1CC1Y7ZJTJWWQoL3PrymwvuY21QAEs0FjaAp8ol4W4CJafD3Mo35FawxAHmL
xg1H0NfxcKqoxWDpeIlKnV9UtZWa1RsXmLGPGa4Z5sDWEhhoeocqDfBQdNCyEnBXKTweOST7
AWqADVnfT8WAIOAAqyoXLmGSASswV7SliGiaRQOlZ13VCqhMXVtlzR9LIZRCkSVqhkF8Ak1f
NXtkteRX6y+eQ6phooOMyqq4lWx+3r5uDhQL1y+FXjIg9JvQHKLBcVYktYDWTGivvMpuwB2Y
M6pPoshHUdni8aAScqyFjv9jBtHIubBPtlLfKA8CtK5NBauyFDBRuxLsjIQfVWc7KQV4u349
7l5+cI6M2/ReuJVP4w7X8zKZpA0drpTWMsjLjiOZtwY9k1Y5Zf+cUDLtEQ3Y+MXpJCvyLWoj
nDGsBu9jwngjszF1VF3fWzuhvmgm1+/QrsK79fMfq8fVOd6wP+3258+rz1uoZ7c53+1ftg84
vOefnj6/c5C/vqyOm+0ehXg/8naA526/e9mtvu3+Nc9KnERC3urkQT9tjUiYq4jDd2q+IJQM
M6b+ibxu3JnfJC8DnenRST/2V5m1UVByVoG0KHafjiv45vHw+rLbu3JjGgXS2KhbeYthXiDz
ucwpjnrKk23rMoall2GcBy4NnqVIS0O1tnqdsJqsCvGMmBcBpnGOlnXkB6yiZLVSJm/rNLsO
45op2pWQrqdF7rYlL3U67VQwBuIaBGKct8LxXMeXAoAXlGsv3yc5f8uJ5LztllzAE9A+XDkD
hj9glHImhEhphiKP05v7j0xRRREwyRRLVC9ABxjguMnFMfhTrFkk8PdhRX5DH5MeEIlZ6Cp8
DKTPBIxas2wcvzUFOgjD2Ju0f8PWHgqLtSXtab80uDbdGO8GHdL9Dwqmn7zUS9gSo3bs0ZCg
8ylbPzQfaV58s5G4QIH2FlGNaaDjtHaCye2s8W5KzKC0sXH/ZUxkhJZX/vu3uJSd6bMgFR2v
TGOaRV6BduC2HQSy4aRYbJdqQo/tzqrNGgYl4xChVSbe+dPzLxULXQ6LLkv8rFoz4fOkqUJ5
BJoOejurLHFxhfFcL0fCGtOyPZDU7im3/qrST+nXpyOciF8pOGXzuH1+YCBKqrKpSOMeEQ7w
Cd3rL5Fj1uWphUUNKkmDMdxBDX/YWt/kpiowLLyu8eUftmNiY423HR94+o2e3gBddf31mVjX
+uEnTqFSAbr4YhJvkWiIZYxdoucemMnNamjuchHV5fXVexukDqdqSkAIIuI95lXRF6KGNzvH
KcYWIE4cvdDB6kTYg0YhV6CeOsHQC2tbeBRqKagVhY/+QEnhqjMab9vayc7vbrA+fl6hhy3S
6BZdRCEUXn/H8HMz5MSn64WbbD+9PjygMmOFYDpBHRH6tRCOh/fh6aaKWq9KUBklDn49/nvI
3OhumqiEsw10N4QOMlnbRvNHKjsUP9U5d45VGns4+H5Kk62znup1tTXYjOldm5aNZCB7QIC8
KYfVUD6aTIYV01SlZKirr2gAN0HzOClorUbm8EpXN4jaIk6qHjo4PDUmhVfcUAbap1T7rpGy
ajRiJHEhZlIgKLz65iLqEp1wikeh7ITt1YSB6nXCkJ8w40+t2qaoEryxIaIm8iEyegLh6EU2
qIrG81DUXk0y20kVIqSHy8Cc6VdrMAdjL2xdp8sA/1l1eHo+PyvA8Ht9UvJkvNo/ePYJmOCU
Plmx3XXo5pkBl0incdfCz9adRkbpaKj6pCEyidUFJC7HHRzc+Cgfy7SYsUFzllcQziD1NcFX
NzQWyrNwekTJFQvBG0vyPOAoKHChUTAb+FVLkP3yDJY3BbCenz2+vmy/b+Ev25f1xcXFr712
QZ4+qntEek0YDzKtMTBjyN+nEmTbaGi9c3fX/sbBDN3BRJ7FwqTxFtUCzAA+QkFLNUzpHaqM
Wi1LV8WkM4mbAsb8jboo/xY0VKMa8t+mr8JCbbs6fNexX4ynjg7qmf9jwh1nj37wg/80qieY
I9yVDdgtmH48FMxOMlydAcNHAPw3T+ubilwNlvTQaCobBF3Gk3cdYBjqIc6FsdLy9A16M3QC
ksc4l8J86JQrl3RIxlVdd4xf2xECQpf8r8Y1DG+Jr9qErmF8243VHRChiiCzxLVDGFbCArNY
dF4mTLSRrFeXXiXiGqH37mYNZ4xZb9PJUmyhX6Rc1oGuai+cE9QYtcRHuzpRR3U0HfM8yT3Y
MrB/M++ZNIa4XOTtmAMo0+QJXdQAAzq3PBaTVk+cpKT7lcS6oKrFisSBEoLczeTxb6LJtBAw
wk9qDEXZ541KtqQ3s2gdqSd7eb00x8drDYpXnkiPRygMWYPWSYhfVZY1QlyknnIhAr6q0wYj
YNlV5LfVtqPb7TM+50hnbHz4Z3tcPTi4lredpICZ3e7DDgrXSegFZnn8Ib+Nq3mgh4G6hahS
ag1NHYcV8vPbC1HPJmr34uIQAwxhhsXDYXCYAj+18kn8B/TNuM8GegAA

--CE+1k2dSO48ffgeK
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--CE+1k2dSO48ffgeK--

