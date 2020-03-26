Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C259193FE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:37:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iry4zlp3Z8UmdbST69x+79kD9/aG8Tn/h3XKB+D/fM=; b=XkT0zFVGMJIGsd
	/R6pVm+oD2t8w6c46R6n/+pGIR/7uxmDn5052MCbh2Rjxc9kAa/WwNOr1Yu4jjhcXgO+r8i5y0/la
	0C1GGk0GKpua2iKid3QHZg1ayS1K1IDq3lUyvL+FhpDD0ecmT0RFS+AtqLJiMNGTSdCdaDWmrjtBa
	Vy76ZullTAbPeRdbCgKt8KnEBxjxT9jR+kidxtoMI5h7xlUGgfPFENiE0FmOXlnw4+KOFLoFVNw+g
	LkPfpGzx/7OUdIthPjj3wgEx/ASZWi1T2mi8msmjsZjqHLXG/zFt2/prP4tFNhHCyFcMZ4ns5lZEI
	NgpVAD2859/bNAxGH60w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSh6-0001iE-5Q; Thu, 26 Mar 2020 13:37:12 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSgy-0001hs-0K; Thu, 26 Mar 2020 13:37:05 +0000
Received: by mail-wm1-x344.google.com with SMTP id f6so444753wmj.3;
 Thu, 26 Mar 2020 06:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ogzwA6jugBDoS4H/UfZ6Rie71Xwx1IMyu+2yJ59XmQQ=;
 b=u0D85GnSRS/gTosZZ+6j9Ch351JaQLVEt1Zae0FiaXp9qHBRhcw4tOEgMs/b1+BaZO
 90rQvI/8uqAGd491A/xPCLZ1fUT4fIpXOMhIxChm28R+EJYS2ucABZQN3fK1Pl6SSiOB
 x6yHgFj+hkvs1xnp627Ci2M0n2xA4nF1EIgnLqjNsiMcHrPK0oSOqY9qXPBKu5H6z886
 aChfxRsH142frQ+hhkaeLDYcSQAVS4nQkKPdsqfj61OI1JFOHhUmnn00IIq7G5BLcj4j
 mm2R2fKrVPa74z/eURKRtfiVpBlilp1tq3aoTfMNR+cWtSW+mJP6/zILUgekf+4/Ia9P
 ihcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ogzwA6jugBDoS4H/UfZ6Rie71Xwx1IMyu+2yJ59XmQQ=;
 b=rDcfSjayvUGmoHHLDSw8pz8Z2K6s/zK2sjRRjETxal682yjoguC/ywpGcIuKG75x70
 t1zjPlpprLDMHU1Vm0CeXpb+zkreiGt63toJ4UKH0bzmkKfdERTwq5I2lVx3q92No+tS
 kHqCM14fPv1iCOV0dVQpY7hpQ1xH+hhbJw5YT3FcmNDwJhA/i1Jy1tpZM+95MREaJqWo
 Ui0sJHRDE0AKscBdiA+vYvwVwxJ5aFOJTqT6tUsWcgYAux0NQ8ast7IaSSJ89D8BX/Kj
 ptselA0dAZgE6+jjsFxLyFXL7PkuP2rnb/WGgBo1Y9knHJui40lnkiidP0FTvQO9RpWN
 VbXA==
X-Gm-Message-State: ANhLgQ01ndd/DM1bkTO0BDoz9mgojr3S6n0xeh00g6mvtxup7KD2JFQH
 02e9vxY5oq/VPeTqZ3yVsUs7ZoIGd8VoUO/wOh8=
X-Google-Smtp-Source: ADFU+vvmDLOsJGcYBRZRoLvK3P3i3BO/LGqS8ZwA94h81148Jr3fgCTzKrzXm8envJxxLf7xoswIzNriFYPh70Onu4M=
X-Received: by 2002:a1c:c3c3:: with SMTP id t186mr18191wmf.118.1585229820814; 
 Thu, 26 Mar 2020 06:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ2QiJLbFGbmrFP9EEyAWJWf4=SQxEe_J4bqwYw0EXqBkL5xZA@mail.gmail.com>
 <e8a58616-aeae-ad78-d496-6dfcef4ddcaa@arm.com>
In-Reply-To: <e8a58616-aeae-ad78-d496-6dfcef4ddcaa@arm.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Thu, 26 Mar 2020 19:06:24 +0530
Message-ID: <CAJ2QiJJ=NK2Piq_7i1kfeP1yB7vDNcTtKnXWOQ5Us2EE7ipXBA@mail.gmail.com>
Subject: Re: arm64: Getting continuous PCIe "CmpltTO" AER from network card in
 kdump kernel
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_063704_072496_37E2F62E 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, will.deacon@arm.com,
 Bjorn Helgaas <helgaas@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 10:28 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-03-23 3:21 pm, Prabhakar Kushwaha wrote:
> > Hi All,
> >
> > I am facing issue on Marvell's ARM64 Thunder X2 with kdump kernel.
> > Here network card is continuously giving following AER error
> > [  100.839168] igb 0000:09:00.1: AER: aer_status: 0x00004000,
> > aer_mask: 0x00000000
> > [  100.846463] igb 0000:09:00.1: AER:    [14] CmpltTO                (First)
> > [  100.861491] igb 0000:09:00.1: AER: aer_layer=Transaction Layer,
> > aer_agent=Requester ID
> > [  100.869400] igb 0000:09:00.1: AER: aer_uncor_severity: 0x00062011
> >
> > This error is not 100% reproducible. It happens 1 out of 4 try.
> >
> > This error goes away in following two scenarios
> > A) Set iommu in bypass mode via bootargs iommu.passthrough=1
> > B) Wait for ~100ms in arm_smmu_device_reset of  drivers/iommu/arm-smmu-v3.c
> >          if (reg & CR0_SMMUEN) {
> >                  dev_warn(smmu->dev, "SMMU currently enabled! Resetting...\n");
> >                  WARN_ON(is_kdump_kernel() && !disable_bypass);
> >                  mdelay(100);  <-- Added delay
> >                  arm_smmu_update_gbpa(smmu, GBPA_ABORT, 0);
> >          }
> >
> >  From A), it is clear that it is related to IOMMU
> >  From B), looks like during boot of kdump kernel, network card is still
> > active and it has sent some request over PCIe.
> > as GPBA_ABORT bit is set, no response/completion coming to PCIe
> > controller hence "CmpltTO" error.
> >
> > Ideally before setting GPBA_ABORT bit, there should be some check for
> > active transaction. if it is not possible, a wait should be done to
> > assure that no more pending transaction left.
>
> In general there is no way to check for active transactions, and even if
> there were, waiting for them to finish could mean waiting forever (if,
> say, a device is continuously streaming to/from a ring buffer).
>
> > why any such delay has not been considered?
>
> The main aim here is to block any DMA left over from the crashed kernel
> as quickly as possible, to minimise any further potential corruption of
> memory (consider if a device was left writing to an IOMMU virtual
> address that happened to have the same value as some physical address in
> the crash kernel's reserved memory). The fact that an arbitrary delay
> happens to give a 'nicer' result in one particular situation on one
> particular platform is neither here nor there in general.
>

I agree.
But we are depending upon kdump boot time and expecting devices to
reach to idle state before setting GBPA_ABORT bit.
adding a delay will be fair and make it independent of kdump boot time.

> Besides, this is *crash* kernel, so yeah, expect errors - something's
> already gone badly wrong to get us here, and everything from then on is
> merely a best-effort attempt to salvage what we can. Does it even make
> sense to have AER enabled at this point?
>

i tried by disabling AER in kdump kernel. but it did not helped as
network device become out of sync with respect to tx unit causing it
to be hanged and it never recovered from there.  Same can happen with
other devices like SATA etc

--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
