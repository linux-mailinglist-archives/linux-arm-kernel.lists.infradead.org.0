Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8281ECB04
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 10:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZGXWlBoO2atVnLawwQ3YXo15xa1ibBA1KiDeNZ4qLuY=; b=umYOwHZ3ZWBd2OG42xkiaPGKsX
	m+dLKp+speLG/1HdDq2FdNGIy4Jg2uAB5VP78KSzpgoYzi8xQtzz0w5taoz2pkdf8lMSidxZ98EiB
	Tsahv5cwNRl4XLqcI/hpMbeWu6V5bijEtKbyPpKEaug37hxMbiTXLcNhpYtI9tjgVRRPf0wE/0tPW
	Dbqr/c98ph2kC/sb69QA1UCkPGxS152B75yPqGJ+2vgwt2XJjavNBjfUwLfOJwi2ttqihzyXjgIk6
	/m6b5E0ndtYz/ztjM4f60IcymMh86fp55MOF+7BjhzYiUuN1a4pFnQHxutErLOq+TFaKJMgiJQGMS
	Uek0Ew4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgORD-0003Kf-Sw; Wed, 03 Jun 2020 08:07:51 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgOR3-0003Ju-GE
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 08:07:42 +0000
Received: by mail-io1-xd43.google.com with SMTP id d7so1244842ioq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 01:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=Y2meCy4uDUvToaPyDjJzL3tQcMFAtvgcN3CrGPKyHNE=;
 b=czlKXXOxtzJ13t+IZ71AjGZVdXPhKv0IohNpKxfenGxfr5E/lC5pU/CqCsrN5te+rC
 zsRwHAToqbGpYOwJChpERXUo64Fgq/kF7MCLoa8Se5BWEzlSO3s6xGI4EKR0eRw6vJZI
 nxDIYOVusH3tHplIMMEV7L0C/9cYmWD7XcMu1tF8W2bq+5N8d5U7uzYfqGTrLZeEyRWt
 Cm3Fvis3xEFWPaH0Tlz6ci7F3tMFUHloD/lDTO6bjWtrlbLVMCVFwQt+Yyqlv49p1Fib
 5VV0Zt5JOt0oogWjgP8pOnSKeWHB9fQZMpgER8Vm9QkB0v2eOyWayyVNhOGYm7VZubwN
 8MQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=Y2meCy4uDUvToaPyDjJzL3tQcMFAtvgcN3CrGPKyHNE=;
 b=Itnv+xAeiUpVSOp9cMGlELjNUH1H/O37UYoJas+2NY5Lq9LS0akobY/p9flz4Rt9xA
 vpannthIZV9BzsrcogC7uqovf5CZb/GWKGQZg/dwpcmS0oMUp8x0xHgKO5cWk1C43wB/
 1e6Z+fwzDFRFxoW+EPDSQwV5TSS+IoCVHsF8+hf6dCB97B/8NubET+EqB9nwuSQbyjmi
 IVZ88PP1TkMAEkSEdJu5xl7Sl6FLBqX2N1Ryp09/O1AjZawgypoiaWtZCJF0XfBuSZ9g
 INcy3sircKBKaDPSR3Wcs8XXGeXUyzLY55QPPbLy0qGE6ydLGIdxdAr6DW5kpXBWISPn
 eLDg==
X-Gm-Message-State: AOAM531/5TMRU1WtLqT+uc5IrVBAO3Hq/IMojFUYAT4jr8hN19bAH8AM
 h4zbdUoTPBAHt9ICWFAtsL1cK9qNXSSDuwkbgeY=
X-Google-Smtp-Source: ABdhPJxt5uz8LMXVFvMKJa76AMnpBCvFGuNUBwvN92O78g7Ie+LdNk2p1f8DOHSGgNWC05x21BS2MhuQg3paf2/MgsQ=
X-Received: by 2002:a6b:7611:: with SMTP id g17mr2573959iom.110.1591171659894; 
 Wed, 03 Jun 2020 01:07:39 -0700 (PDT)
MIME-Version: 1.0
From: dillon min <dillon.minfei@gmail.com>
Date: Wed, 3 Jun 2020 16:07:03 +0800
Message-ID: <CAL9mu0+hE3dc-kRPSD_M12Vu2zb_JGU7qpobz21OXGVSqyhepw@mail.gmail.com>
Subject: [REPORT: armv7m/stm32] mmap -6 error on armv7m no-mmu platform
To: hch@lst.de, m.szyprowski@samsung.com, robin.murphy@arm.com, 
 sumit.semwal@linaro.org
Content-Type: multipart/mixed; boundary="00000000000090b4a205a72985bb"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_010741_566042_E109B3CE 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linaro-mm-sig@lists.linaro.org, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--00000000000090b4a205a72985bb
Content-Type: text/plain; charset="UTF-8"

Hi, Christoph Hellwig, folks,

i just writing a driver for stm32f4's dma2d controller(/dev/video0
v4l2-m2m device), got following mmap -6 error
(No such device or address) at user space.

working environment is:
hardware: stm32f469-disco board, ARM Cortex-M4 up to 180MHz with FPU,
ArmV7M, no d-cache, no i-cache
kernel: 5.7.0-rc7 commitid: d16eea2fa5a1ed9bc1788db39a76017916dc7f25
app code:
int fb_fd = open("/dev/fb0", O_RDWR);
if (ioctl(fb_fd, FBIOGET_FSCREENINFO, &fix) < 0) {
                perror("ioctl FBIOGET_FSCREENINFO");
                close(fb_fd);
                return -1;
        }

char *fbuffer = mmap(NULL,
                       fix.smem_len,
                       PROT_READ | PROT_WRITE, MAP_SHARED,
                       fb_fd,
                       0);
if (fbuffer == MAP_FAILED) {
                perror("mmap framebuffer");
                close(fb_fd);
                return -1;
        }

also tried mmap /dev/fb0 to userspace , get the same error.

after some debug, it's seems some side effect created by
Fixes: 34dc0ea6bc96 ("dma-direct: provide mmap and get_sgtable method
overrides")


arch/arm/mm/dma-mapping-nommu.c
void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
                        const struct iommu_ops *iommu, bool coherent)
{
        if (IS_ENABLED(CONFIG_CPU_V7M)) {
                /*
                 * Cache support for v7m is optional, so can be treated as
                 * coherent if no cache has been detected. Note that it is not
                 * enough to check if MPU is in use or not since in absense of
                 * MPU system memory map is used.
                 */
                dev->archdata.dma_coherent = (cacheid) ? coherent : true;
        } else {
                /*
                 * Assume coherent DMA in case MMU/MPU has not been set up.
                 */
                dev->archdata.dma_coherent = (get_cr() & CR_M) ?
coherent : true;
        }

        if (!dev->archdata.dma_coherent)
                set_dma_ops(dev, &arm_nommu_dma_ops);
}

CONFIG_CPU_V7M defined since !MMU,
'cacheid' is 0, 'dev->archdata.dma_coherent' is true, don't call set_dma_ops().
cause get_dma_ops() return NULL. so , dma_is_direct() return true.

kernel/dma/mapping.c
int dma_mmap_attrs(struct device *dev, struct vm_area_struct *vma,
                void *cpu_addr, dma_addr_t dma_addr, size_t size,
                unsigned long attrs)
{
        const struct dma_map_ops *ops = get_dma_ops(dev);

        if (dma_is_direct(ops))
                return dma_direct_mmap(dev, vma, cpu_addr, dma_addr, size,
                                attrs);
        if (!ops->mmap)
                return -ENXIO;
        return ops->mmap(dev, vma, cpu_addr, dma_addr, size, attrs);
}

dma_direct_mmap() always return -ENXIO(-6) since CONFIG_MMU wasn't
defined for armv7m arch.

so, dma_mmap_attrs() -> dma_direct_mmap() -> -ENXIO, mmap on no-mmu platform
will get erro -6 all the time.

i'm not sure if there something wrong with my kernel config, so with
.config file attached.

Hi, Alexandre Torgue,

did st's test team verify the dcmi function with recently kernel
version? thanks.

thanks.

best regards.

Dillon,

--00000000000090b4a205a72985bb
Content-Type: application/x-gzip; name="config.tar.gz"
Content-Disposition: attachment; filename="config.tar.gz"
Content-Transfer-Encoding: base64
Content-ID: <f_kaz2crz90>
X-Attachment-Id: f_kaz2crz90

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
--00000000000090b4a205a72985bb
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--00000000000090b4a205a72985bb--

