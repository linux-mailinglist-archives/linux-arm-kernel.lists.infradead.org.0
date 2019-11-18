Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806ED100202
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 11:04:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKYtMwDEJzsDMdJz+WbYGBFONdeKdkE0KNA1zdxrEf0=; b=c2B90selgJdstf
	6u+czp95dLSTqzuL3JOGjXQfbhIOg6AlQt0tNIM6/yRBVe2FPIKmzR6dcalOR7Z5O8nMAIBuI/83u
	ZzDX36ttUq5wmEjjaZwssoTTVYJRTq8dGM/I4qNv07jb+ZyCqFDeSIMiFfsWTsQetez/wMLXXMbiF
	AV7s6qdMhCaWsgVsd1eZzFYZSEtXDpY0j0fquQgi32bLkuJGpjY42PsGfNMhvkhoFhKc2lklqKoIf
	UmV6p6/p9rgUdqjPJHx7SADFkL+9jzmb7/VOQV2r/LkeC/i6KVf6hEFSksjB/wrpeT+m36VXgsSiY
	ClvMeCEgYzjXz8LNHyyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdtI-0007ia-LY; Mon, 18 Nov 2019 10:04:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdt5-0007eq-1c
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 10:04:04 +0000
Received: by mail-wr1-x442.google.com with SMTP id s5so18680824wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 02:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WdDz0mrFyY802jpioK8Tj777aw83BXkZyt25Ka99dqg=;
 b=FELuli8caTlGpXUoSyRgcCAWWob89CrR4hGGCPib2d3FmDVnaOsWsiZgD2FD4Zc+Bh
 /huKwCvvQs98zfTz0GyIJViCy/96jQEKQUMoL11foqDw4DcIgu2illbmb3bNmy11SReV
 RLQipDf36JePZTzZIiI3DZ0tMO77eNJAjEexXHjFsgYLntS+5LG02mn0TPrCZi6XwId3
 CJt1e5d3Fh3nyn1Xp1OSNpw8hSznLHKfuCqF84dNFWbv5LDI+OIledAIZPKb86kQ+o08
 ac9bnlyDFv8Mnmx7RYnmPrm7qasBVCpvTrhTiOLYggAuEiV8DsQCY+kY9g6Kco9FSgTS
 3caA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WdDz0mrFyY802jpioK8Tj777aw83BXkZyt25Ka99dqg=;
 b=sPOKZUizHFcjUGJn5KQ66EARu4TVxiE5BN2bLVUQcW+bHN30IxxiE0SghFDLluoCvu
 UhMPO+cZU6rsTkrXbdKz8FtKLrvsC0m+MlwMXS8BvWvA4f4fpCw0hbuoYGThjJ/jDvaP
 zcGaa/VtFo8Y5ie5o+hTWbd6DCl4acWRcsiFQW1msQiKCsPiKQcK7zvjMUADYSrOzWji
 fygcIEnrKZ8kRWg8Aiox0k/bXAtMfzoP/lcb7rqL2kJUGSQBvitEH3XJItmzlMql06XQ
 yUNz+KEc8cPQXdposDeMsiyw2Nbr6Zi80o8ZwXIO4XbyaEiBAsUxbr3c4jQ6RJqS48Q9
 DdJw==
X-Gm-Message-State: APjAAAVJPhylf/Md2sO7ZA8w3JJdQTsCubhJ5g5f3g3rfRMqrg/SfU+1
 IPTI3exnmskzXKhEZBLVpoY=
X-Google-Smtp-Source: APXvYqy0f+ZAHlRAAURCDBWqtJqMVGtzVIbkiJxxCnaLErOz29EUQCGlTC2IwHAKeqzKn48krWM9ng==
X-Received: by 2002:a5d:4986:: with SMTP id r6mr28761870wrq.307.1574071441548; 
 Mon, 18 Nov 2019 02:04:01 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id j14sm22082676wrp.16.2019.11.18.02.04.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:04:00 -0800 (PST)
Date: Mon, 18 Nov 2019 11:03:58 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH 2/2] crypto: sun4i-ss: remove dependency on not 64BIT
Message-ID: <20191118100358.GA4567@Red>
References: <20191114104907.10645-2-clabbe.montjoie@gmail.com>
 <201911181510.4s0BW0Qc%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201911181510.4s0BW0Qc%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_020403_117997_B329301D 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kbuild-all@lists.01.org, herbert@gondor.apana.org.au,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 03:12:14PM +0800, kbuild test robot wrote:
> Hi Corentin,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on cryptodev/master]
> [also build test WARNING on next-20191115]
> [cannot apply to v5.4-rc8]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Corentin-Labbe/crypto-sun4i-ss-Fix-64-bit-size_t-warnings-on-sun4i-ss-hash-c/20191114-211327
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
> config: arm64-allyesconfig (attached as .config)
> compiler: aarch64-linux-gcc (GCC) 7.4.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 

Hello

Thoses warning are handle by the "[PATCH] crypto: sun4i-ss - Fix 64-bit size_t warnings" from Herbert.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
