Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280091446E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nK0WGVsEpwVKRA+qtP5rjwTgRoJyG8exLa6tKlTL2rE=; b=lknm64WdLxfS6Z
	2cTAClQqRWzNsp7W2r3HOBlkzeGo8DnzprTFgvryhFCggsItnDmPMh4N3AL2GkFXjaLUfTFCkEvRX
	jR+9oHn4gWXyS5vX1DCkDYQ4DIS/tXJ+WnJTq3aQgueezbwoikurNIPMsFVajafYeuRsmZ2t9mKv9
	xJAna6AJJ7608dH5uFDnuBgPNODeJj/oNkW+LX6sYB/89G2YXfoVEayW0lRInh4AUISm3xhL5xqdw
	zsDheV3y+w3Hyr3ziiUBoXLeuy6/+jlRyWe1TNdpot5iQo2PhkqN/7YD8gb+iOx7ypMZB7K+cwof8
	rJBGMiKCY22SAfGyxM2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1g7-0000Hn-Ql; Tue, 21 Jan 2020 22:07:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1fL-00089j-3O
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:06:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id q9so4696041wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 14:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3DHa7TnxbIOsmyeSZxXaUWK1Ell61s+NmMCLvxItjFo=;
 b=wQLLblJDBIHGzkqNNorR8FPcykFhr9csTj6WWSAH5IRsQO+ZtETRbrf1zCbio9s6Tp
 VJ6f1OhBz2uUkm/DKjedaIZ+ZI4nWJACl+4/QmUg0IC/wig2tnXf7ubrKoiyxDaE2xYh
 u4zCSXxjdy+QP1EAPAS13so/dkuJKFRt6MCWhnQgoWEZn7wTFO0D0q3HzJkTFPFPGhcI
 YYZPSXxMtKiBUPHVs8eoZhdfkaiQ4ik5Evniwp9z9KNLYguDPchSXt9nZJkxeRqGqNYo
 CUAyPs7F0NyLbr+0eqplofWjsQ/0hVZ5GWiX4AKz/bnoFRGHYEmsU6p418Us3i+z7DFk
 yJlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3DHa7TnxbIOsmyeSZxXaUWK1Ell61s+NmMCLvxItjFo=;
 b=T1M3q5Y05bA1IZtkhmkzj6XWwaxY8jl+Nm8Jd7EofWQzqcY0RtEGefROWz57EwXQWV
 xjukkNMPbZzzmMLU096kmRFX5IhSnWfj7OkhsFZBWz0GmJnMBg0L0LSPcgnGdU5+RjHT
 iQTDpXJ75nibX9dg0zKKt1rkAkB6RTWjW2JRX4ADHa2BF6kt+86d8+joigW0dwSI9St6
 fF7iYxn0gRAyHXdGqa0jdiCFqtYR8/bYVNzY3OvcU+6arAxA0M6e/BqrwVirQ77vqI9d
 K1AMEIPE2D+bSCLyIF90Rv1r5iWoZ7RY2NzJ+bMZ8YxCEtAGeY5YE/aOcp7GtrUr62QG
 wa7Q==
X-Gm-Message-State: APjAAAWtqQlenIP+9BaSG9qZHwQEAY1I1oG8YoGDQoo6zJFWCPtS6xb7
 EugRsT5hExMju73V7Gq0qv7WNn5hbdpuh4Md9OJKjQ==
X-Google-Smtp-Source: APXvYqym5ElhGbj2TBisioR3/L296lisCvcxqTtBApfPRlGY3AwtbJjbfjivrUBRQ6X2b3l+gzox7owW5uYRlNE6kmA=
X-Received: by 2002:a1c:44d5:: with SMTP id r204mr432732wma.122.1579644386652; 
 Tue, 21 Jan 2020 14:06:26 -0800 (PST)
MIME-Version: 1.0
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-16-catalin.marinas@arm.com>
In-Reply-To: <20191211184027.20130-16-catalin.marinas@arm.com>
From: Peter Collingbourne <pcc@google.com>
Date: Tue, 21 Jan 2020 14:06:14 -0800
Message-ID: <CAMn1gO6dNi-97cG-a8-6PcauLy9xpRvG6JYdU0zyn9a_6tnyvA@mail.gmail.com>
Subject: Re: [PATCH 15/22] arm64: mte: Add PROT_MTE support to mmap() and
 mprotect()
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_140631_164354_338CEDBC 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 10:44 AM Catalin Marinas
<catalin.marinas@arm.com> wrote:
> diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c
> index 9442631fd4af..34bc9e0b4896 100644
> --- a/fs/proc/task_mmu.c
> +++ b/fs/proc/task_mmu.c
> @@ -677,6 +677,9 @@ static void show_smap_vma_flags(struct seq_file *m, struct vm_area_struct *vma)
>                 [ilog2(VM_MERGEABLE)]   = "mg",
>                 [ilog2(VM_UFFD_MISSING)]= "um",
>                 [ilog2(VM_UFFD_WP)]     = "uw",
> +#ifdef CONFIG_ARM64_MTE
> +               [ilog2(VM_MTE)]         = "mt",

We should probably add an entry for VM_MTE_ALLOWED here as well.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
