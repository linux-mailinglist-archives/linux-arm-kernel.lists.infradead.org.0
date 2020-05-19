Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422EE1D9443
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 12:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCnIzRBUgi9ShKWByV3VBr+GNeqs9fAaaFMHPd2SJEs=; b=Fc3Cf+jL2VYVBZ
	SvNWsmuPWaL76PczLqyepE8rtodoMCIAD/5XM1EVX462zACl/rnlSCpMSvfjodtd7diWbJeo1atsj
	W7gabo6pIEjvz1Kx1J9uX/oN3sn/NoasCqfZdrloGB6oo3wyjLRfc2NpXYWb+LVBr4NucE9+3LcNk
	oGqfpLyl5UwiW6LCG0yShYA0x/T6+h9yeLw40xTvMHUofN4xlNiXI50zw4vhdetlHzpUlvijD+wcF
	v2rneaiIOYA+fbPKCaBlL8ja3D6fB31yFK6jIrN8uRMc8jlCYVaooobk28r+yLyMr9lCsO7NNnBdx
	KHAiyYtsjnBDR8FWZbpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazOc-0005Fv-31; Tue, 19 May 2020 10:22:50 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazO5-0005Az-Su; Tue, 19 May 2020 10:22:19 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MfYc4-1j8FH30O0u-00g3VY; Tue, 19 May 2020 12:22:13 +0200
Received: by mail-qk1-f179.google.com with SMTP id f189so14205382qkd.5;
 Tue, 19 May 2020 03:22:12 -0700 (PDT)
X-Gm-Message-State: AOAM530/X0d1BfpLkR/tnPT6BZADXeDgcIAt+qDjQeqDP1i2NTp2xzf2
 BMTdN3639+R/LCwqdgQAmK5XCKglxCWW8QOzaUM=
X-Google-Smtp-Source: ABdhPJxOu+nLjvg7CMqkLaOXbJg4GTm6uL1Kx08HssunT+gb6Fi/yoTUZBq2l9jxT8nUph2PPk6WMqUkT4Yu1iuBXRQ=
X-Received: by 2002:a37:434b:: with SMTP id q72mr21154808qka.352.1589883731571; 
 Tue, 19 May 2020 03:22:11 -0700 (PDT)
MIME-Version: 1.0
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <a57d46bc-881e-3526-91ca-558bf64e2aa8@huawei.com>
In-Reply-To: <a57d46bc-881e-3526-91ca-558bf64e2aa8@huawei.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 19 May 2020 12:21:55 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2VrAqefPYF2JqRjwdhgTDtORUgWgVuYxRYWqKxE3+5pA@mail.gmail.com>
Message-ID: <CAK8P3a2VrAqefPYF2JqRjwdhgTDtORUgWgVuYxRYWqKxE3+5pA@mail.gmail.com>
Subject: Re: [PATCH v7 0/4] support reserving crashkernel above 4G on arm64
 kdump
To: Chen Zhou <chenzhou10@huawei.com>
X-Provags-ID: V03:K1:jz2Hvot0KeuothuFOZLaTRrDwLl9eNTy3LIoscacfSdUjY34BwK
 uVcaV+7rZ8A+UdNcYCoeXIh7dO3AHuHJ6/uAWgIDHLWJDcgrH8I8a/Ama0i4W/MUlxq0ABN
 ME42CJS64fxgh6LwVGR2DxOaBJWh65KLOwqDJYIdndBatVa7AHugWAH7aaRgAPnNsEf0AVR
 wCGeEyO585BzQ7c7k74Hg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3yn6moQ3WXo=:eB46Ww3LlEucP4usDqDJQ4
 5Au6YzXQBtTP9ZC1OHvARFmO7LAyMLwMaGCNtby7quUWPXfRw0vZC4K2NRXNUW++pC+0z5d/s
 pJ3f3EOgOCtMqtm1Hj0pNMU4Hp0u0q9wcKnJf8IfrOjIvLbPI07Lf8VxuoQne0c2BJFdLrzaN
 UnEdZxWjhjTD0VSBo2d6YkjJGmAsw0smKy805gsX87VzS5fiCOGZdJ00TJJ4Cn5QFNziTTC0Z
 ecYejSsp4Iwd8Ec6N2DogYG3KZcq9og0Yr4sliG/fTD5eaH31D6kL89wuTj2CLeDCO/fJ87O6
 9QcGFTIQX3Dc96G4BfP0Ob82eNH3ZoiuYL71aAN+AyfjHQbVHXWwZFV8E6q7edbR1dA8MNjti
 emkHUpd2cpxCVuSoAH3UbGUQnHKHAfvWrpLKu2+mj5j66Y5ti31pSs4urI90ihPcDsJBH1X1n
 mHgcgk2LSaxtfY0Qxxw63oNbMd48YHhHQRKAThpIDjvBq2uNDZTH2IspR8Po7uteJkpO6alX/
 vxfg31vko/sDM8n35cDKH8iP4+mj1fQ4IoYUj5+5iScgNLC72YLgWaps/6aQHr1dZfSLKygHh
 g9xlgQ2lVTBHVwskFTdcyjRDbhcUi09OUGHvIo1G9W2eMbYyAbuLSIvjhcc9Z20zTTsZGCr3L
 LKQHQM9tqFmijPbR+pWHK1UpdWq0ppDsT0M+ldPwFbX2iWOeL5hNMxCnDRjAt16UsttZBokru
 yrPqEAkAqpSkiVUKlrehP4Z2fdyKFDuqZgIkh/gbjxHFZww21Daznume3zaYX7QQMud4xMWnw
 1Jv8uBSnFX8V4hqJwZcA8haFi3GbvUA1FEj8FtXXeTNV+59s9E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_032218_233284_E1748010 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Simon Horman <horms@verge.net.au>, john.p.donnelly@oracle.com,
 Will Deacon <will@kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, pkushwaha@marvell.com,
 Dave Young <dyoung@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 4:10 AM Chen Zhou <chenzhou10@huawei.com> wrote:
>
> Hi all,
>
> Friendly ping...

I was asked about this patch series, and see that you last posted it in
December. I think you should rebase it to linux-5.7-rc6 and post the
entire series again to make progress, as it's unlikely that any maintainer
would pick up the patches from last year.

For the contents, everything seems reasonable to me, but I noticed that
you are adding a property to the /chosen node without adding the
corresponding documentation to
Documentation/devicetree/bindings/chosen.txt

Please add that, and Cc the devicetree maintainers on the updated
patch.

         Arnd

> On 2019/12/23 23:23, Chen Zhou wrote:
> > This patch series enable reserving crashkernel above 4G in arm64.
> >
> > There are following issues in arm64 kdump:
> > 1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
> > when there is no enough low memory.
> > 2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
> > in this case, if swiotlb or DMA buffers are required, crash dump kernel
> > will boot failure because there is no low memory available for allocation.
> >
> > The previous changes and discussions can be retrieved from:
> >
> > Changes since [v6]
> > - Fix build errors reported by kbuild test robot.
...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
