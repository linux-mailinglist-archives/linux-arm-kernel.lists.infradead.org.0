Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E761467E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 13:24:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3L5crlzoWyMp5Uj2Pm8DswlzGXI/ZP+XJNeqYzQ7mE=; b=C6pFKB4OYYgs0J
	qQubPy0iX0ZjWd1lLP3i15r4n4yZlHDg2W/5QWvX1WAFItf53Xc6jdATR4dUnqNCqJRpO45IL+aMI
	5SY3Fs4ffNrrap4gdsadPIdjT/Db3tNxF7RZGyyrgci/rYkFtX8MqF57xA2YZmfvPQYFUFPPvlSg9
	00no/qihBlqpH05hu8MfHW8Dv8aaiVig2tug7vT6zfPWFFLAToIlZDGfa+aioDSbZCLCa/buAZ1X5
	7OGYLxw8/lWuFFlZIzz5JKrgmoEtK4gtyvVQF6vf/55cxgFncPdXAbfy1J+mBxSU6i42pANod7O3b
	dO+W3N4zPZR+xMi6gWww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iubX9-0001SS-O0; Thu, 23 Jan 2020 12:24:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubWt-0001Rv-Ch
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 12:24:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so2855573wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 04:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aRCL8CXLlmFTGIYCIJvvzGt8RhcbFX8onxSEFC39pLg=;
 b=bPWrV2L6zXSCAka0nsq3AXmYmStWPCZOw6FqAC3Wi7Fj9VB6Wasl5uEkFWjml4tfCk
 9Ib74vYOV/xcE6mFhtqdgFzLJBpzEEwcFMzR2XGSXsr4TJ/dBgmPwqWLtUgCOxM/kT6o
 LhT8Oi8Eetck6727TSDRwaxnHG2NU3FTlCPU6goueVSnz9qjuxoEJnMFLvAuep/D9NfS
 TevHeta+AenlMWl5o0n9DY0UzVZdNd+Sy5xUuYrLMczRj10UILpFODrzfKaU8OEPPo7S
 UfFlQPkeohFBFw6hnpBSxPyXq57RterAp+bSy4D50/l+YarAzUI0M51qqf5wmRAL8VD8
 myzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aRCL8CXLlmFTGIYCIJvvzGt8RhcbFX8onxSEFC39pLg=;
 b=Jh35R6E/YmXl29StKWA27t79CZ7BBabJaQpzRVsHbFXigqr+rNcyaA3Uyk0LmiZp0s
 a+OQxvFy5IuYtZnyGvZ6tfQjjoYpzzv6en+XhsnN34FdoIkztCkd6rbZ0ipt3cL2JbZA
 IPm6Y0X0HGhrtE1ATXGTwhsYAA0HLaSLTy4oitqCPu98RrI5U+HKC0QpN2fOh4Qwbwb5
 FJn/NsOh4ZdNGvUuSZ5efWX0gSlw+mXNVekgrd5xIDToLLJUyvq/SSJRZ+kCqmZixW2O
 N4mzIgLW9TWfzJNO6IHqXUuHmzqRKYAargKmKGKQf7NAZ15+sDBcjhNw0GqMkHY69qZL
 cW7A==
X-Gm-Message-State: APjAAAVPTWodHPm5/dJ9xvFXaXau9CHEpS9B2XRUSxXAdIDojXI+xQA+
 ZReG+xC9RHCuhKdHdtdVAQdqqvGl11HV98Bjnvj6QA==
X-Google-Smtp-Source: APXvYqznG0VbuLKScctM26duGop+x5oKIy8U/BxpchFYBRD/Ti2/Zk+F2VZOrzfyUjgQ8M1dxPxvSzT6kL/j40OwWok=
X-Received: by 2002:a5d:4d0e:: with SMTP id z14mr17531764wrt.208.1579782249072; 
 Thu, 23 Jan 2020 04:24:09 -0800 (PST)
MIME-Version: 1.0
References: <20200114141647.109347-1-ardb@kernel.org>
 <20200114141647.109347-2-ardb@kernel.org>
 <0effdeeeccdb9544cc69f185fd23cd06828ae8fc.camel@linux.intel.com>
In-Reply-To: <0effdeeeccdb9544cc69f185fd23cd06828ae8fc.camel@linux.intel.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 23 Jan 2020 13:23:58 +0100
Message-ID: <CAKv+Gu_4Y18CF-h36JKKJrcdvUL8KM1YSbDTgED7kurgN6xk_w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: tpm-tis-mmio: add compatible string
 for SynQuacer TPM
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_042411_434559_42190992 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Peter_H=C3=BCwe?= <peterhuewe@gmx.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Rob Herring <robh+dt@kernel.org>,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 linux-integrity <linux-integrity@vger.kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 Jan 2020 at 13:22, Jarkko Sakkinen
<jarkko.sakkinen@linux.intel.com> wrote:
>
> On Tue, 2020-01-14 at 15:16 +0100, Ard Biesheuvel wrote:
> > Add a compatible string for the SynQuacer TPM to the binding for a
> > TPM exposed via a memory mapped TIS frame. The MMIO window behaves
> > slightly differently on this hardware, so it requires its own
> > identifier.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt b/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt
> > index 7c6304426da1..b604c8688dc8 100644
> > --- a/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt
> > +++ b/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt
> > @@ -12,6 +12,7 @@ Required properties:
> >  - compatible: should contain a string below for the chip, followed by
> >                "tcg,tpm-tis-mmio". Valid chip strings are:
> >                 * "atmel,at97sc3204"
> > +               * "socionext,synquacer-tpm-mmio"
> >  - reg: The location of the MMIO registers, should be at least 0x5000 bytes
> >  - interrupts: An optional interrupt indicating command completion.
> >
>
> Acked-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
>
> Someone else needs to give reviewed-by as I am not expert on DT bindings.
>

Cheers Jarko.

Rob's ack should be sufficient for this to go via another tree.

However, I am still waiting to hear back from Masahisa to confirm that
the SPI command sequencer approach works 100% on this hardware, so
shall we park these patches for the time being?

Thanks,
Ard.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
