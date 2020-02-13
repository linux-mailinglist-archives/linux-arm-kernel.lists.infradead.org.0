Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AEA15C901
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:59:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUBIkZuu31A2Go+tvHrpKfx9FoWK09PUdvl5S2DLrG8=; b=CrN6OXbLCVHN0B
	pU1w+5zE/ADjhNg8TD3VhnFyc8hJEmZJMklmvvsq3Vnq2p3o2M9y9JHp8rAOh7cG8igaHi8bD7qWu
	hjH5lMG6PqhtqnzYNiITYJuQyEg2BuJAmavxLpShLA+/aqpt34rW8Ir5PqVMy2m+VY2D5lBVCz4uS
	ggUzrk2sy8C+HGNWmO2AwBJoR0cQx7aluvFs66qrm1TVIDTIykZGijkGN2/nzD9sMYVZYdeaoLbET
	UKrmVdCP881UQvqFx/AVJGcDLHdVZ6Bu8Q44rvhaIlW4YYEPHkORXeyE19imgOFYoRc18LLWWrwae
	vSHehax+4HqvWVG849jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Hpc-0002E6-4P; Thu, 13 Feb 2020 16:59:16 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HpT-0002Dm-KE
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:59:09 +0000
Received: by mail-qt1-x841.google.com with SMTP id k7so4871000qth.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pxuTUtjBiIkjeRmpGcLiElYNN3iiTYBT8TjHqmzGtI0=;
 b=NyQPoKzqtqUDFe+ZVb6FHLXTwwhC6+d/tmy9HQ6WBNV1pd/7kePTPEY5UINrubC/kz
 yko21GagFbscLXe293Z380uw3og5/W0DL67OxyrAgXF4T9DK6cAaG4ryrSzDFFsmLq5J
 m2pvFb990WTHTlhZCDr1nanOWm0wsj2udpcK8akKO1wT9l+f557mPGta4mbby9jjQqWx
 NJfmdwxhdBVuOdZOKN3k602N2A7BwFC8/agZeB1m+nS/MbpuGSTY2lGUu6BLXXLuyxv/
 BTwRqFCrkpbiBOEB8Fns9PC0tf4vK5HtHbUyuRHoYxuMn+wCPVWtplNgujWGjX+6sAeV
 rVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=pxuTUtjBiIkjeRmpGcLiElYNN3iiTYBT8TjHqmzGtI0=;
 b=BDERFlr8NVDSSRPNbWaGL48BRVmZL+Lsg0EY4Zuj+A1jJ78/X2SQPwL0OgDxfuVvWa
 XMJBrtNjkZuhGZuOLZJAGQGjbBWRm9iu3QA4vLvu8krrKKRHqDHX6HO8R6Y6HCi1nQGO
 FnmDo9+bZ6YGthCkOzZe4i/DQ+NfdjrSUSEFILH6Ae/DVAs3ncFXLE9styvK1MeBo3xF
 UsPeI3UOSr+/FTzLZ6w8cw5m9KpDu4oicVdu6fA+3RFPHSKYoSc7d3H8oQrh/9soTRt1
 8sLBa8MAn1uDQyshfl+SS/VOpy1QG58STzxfZoPNqyPHnrBI26W4wy9GmJQ024Nzt+D7
 d6Kw==
X-Gm-Message-State: APjAAAWNNEsQuP/9JMFcWkxVJbiiAlAzXR8FzfX4ad3i+v88SRBQF/7z
 OtKtgbQhZ/KA+8agXMOBHOI=
X-Google-Smtp-Source: APXvYqx2ev5Iw2z0kE6/Iwqq/1SbJGW3fueGe2tlmP2uK0MXbbqj2zOewIHPEqKXFVWKv1NIWgo3IQ==
X-Received: by 2002:aed:3e13:: with SMTP id l19mr12210232qtf.103.1581613145573; 
 Thu, 13 Feb 2020 08:59:05 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id u12sm1808979qtj.84.2020.02.13.08.59.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:59:05 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Thu, 13 Feb 2020 11:59:03 -0500
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH 2/3] efi/x86: add true mixed mode entry point into
 .compat section
Message-ID: <20200213165902.GA1400002@rani.riverdale.lan>
References: <20200213145928.7047-1-ardb@kernel.org>
 <20200213145928.7047-3-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213145928.7047-3-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085907_665274_E35F9C74 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-efi@vger.kernel.org, agraf@csgraf.de, daniel.kiper@oracle.com,
 mjg59@google.com, mbrown@fensystems.co.uk, hdegoede@redhat.com,
 nivedita@alum.mit.edu, pjones@redhat.com, leif@nuviainc.com, lersek@redhat.com,
 mingo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 03:59:27PM +0100, Ard Biesheuvel wrote:
> Currently, mixed mode is closely tied to the EFI handover protocol
> and relies on intimate knowledge of the bootparams structure, setup
> header etc, all of which are rather byzantine and entirely specific
> to x86.
> 
> Even though no other EFI supported architectures are currently known
> that could support something like mixed mode, it makes sense to
> abstract a bit from this, and make it part of a generic Linux on EFI
> boot protocol.
> 
> To that end, add a .compat section to the mixed mode binary, and populate
> it with the PE machine type and entry point address, allowing firmware
> implementations to match it to their native machine type, and invoke
> non-native binaries using a secondary entry point.

This patch refers to efi32_pe_entry which is only defined in the next
one.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
