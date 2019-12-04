Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24034112884
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:52:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBNF3l5Q572rB5wLArIE4iDdQeBGZt2lmILucgfHoCo=; b=qpGdtQf4F0YAp+
	ZaZa61hQwGMSx0VVHU/uQwYVCq9y7MTChVVK79KZDN3FBXuS8dE2HdlMP0emIROTdmKW3sCTOgHXT
	/aOrjbn9zqdgp1seZwYCxANBHaiWA1abcTDSoQ0hlemNqFY9r/vV9wKkHl1RgGRxq5qMqZyjpXK54
	jdRSPpY9ydaeX7kOkBLITGuXao+ejnZ0YzDPvTSs8ojnZT97FzJWE14GNZpUCUVLwJ2M5eQkyZbTj
	mwi5Uz/LHP3B4gBQUqPsWhI4Oz4oq4xjeZg0OX1pEf9RtvPHFoxZnPnalY/ni656CVMj6FGEgDzWv
	oHFn3iBH5lRe2R0zvGxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRKS-0002zc-NR; Wed, 04 Dec 2019 09:52:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRJW-000253-N4
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:51:20 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so6306463wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U+MqMdaqYA9wxrEDifn792XFhLysGc8RSGDMrug+w3U=;
 b=Przb2Mp6fXtj52PQek5CbvK0m72zcxvl/tkEZHPbnWSa++nCWSJZZmS9++pPkRXrHG
 BmP235WX29P6BS93AZhlst2RD7hH2WoH2RVk3T/9HoyC4AgEsDCHcd1EHI0AlYUuXjJe
 dI3x/0u7OgFjrMrvJ6WcKeOUmYgR0U1yn16Yy5SlGY6ZJDeX94v6WUG23ht7i1IPjrMw
 okf5mTcha9+T7jwil9n90t9RCeixq59sYXp9pI34nZ9pevxFrWCHHd0Suk3OvMD0bdvY
 NyMXQL9g/QB8vKBbvg2D257IjR/amd+XQRUdX4R+nQbtGGP3uveM6gu9gV1MrkTo+DW+
 pA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U+MqMdaqYA9wxrEDifn792XFhLysGc8RSGDMrug+w3U=;
 b=roizSxyk9IRmPLgmuMCct27wOupkm9sJSknRSDy82Qjp4eHLjeJ6q3NdYER8AOTWa5
 rDFid1os8VLXcM93AEI5IdksyV0PgRZeSc+Uie/sTLICY9hoMuA730KGt+l8O/xdqjvt
 oUWb3kYUi6h1Vto5BiNWag085XL/THgSJYIqh1HXdt1HWiscNwh8TfL0F0Lhfa4g6wSL
 Mfe99BVScdMfoEk7srS/vJGCXweb5MeF2h3AXIADysRkbvH5kUQqM4vMlu3fqQBtt2CS
 6K/6bfEE8zIcfhVJ7Uh/sVa6FrGQivp7kiXSwBjon6B1a0wmioZ2vKOULb5YodH8S/AU
 stvA==
X-Gm-Message-State: APjAAAXgWKETqG55ygSG2nxAUcKBCOr00z3Ui5ohXR5Www+ZbIOY+Gva
 X6aiFR+Ixbyx1DvsyGUqeBwe2kBVqDbBH5ay92O0FQ==
X-Google-Smtp-Source: APXvYqzLvQuJFDKa5YEtxpmabNfV3tNQmNC8LrgshglGnlL4aV86T/kP4WSpVw03YPNpB05E/92NdOuel+uj0rhMQXU=
X-Received: by 2002:a05:600c:141:: with SMTP id
 w1mr18577201wmm.61.1575453077074; 
 Wed, 04 Dec 2019 01:51:17 -0800 (PST)
MIME-Version: 1.0
References: <20191203201410.28045-1-msys.mizuma@gmail.com>
In-Reply-To: <20191203201410.28045-1-msys.mizuma@gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 4 Dec 2019 09:51:13 +0000
Message-ID: <CAKv+Gu-teb+3a29cZVc0cxZrXonQeO-EtPugPaQ1QFbeBYjGTw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] efi: arm64: Introduce /proc/efi/memreserve to tell
 the persistent pages
To: Masayoshi Mizuma <msys.mizuma@gmail.com>, James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_015118_770901_C15C8039 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 linux-efi <linux-efi@vger.kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eric Biederman <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, d.hatayama@fujitsu.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Dec 2019 at 20:14, Masayoshi Mizuma <msys.mizuma@gmail.com> wrote:
>
> From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
>
> kexec reboot sometime fails in early boot sequence on aarch64 machine.
> That is because kexec overwrites the LPI property tables and pending
> tables with the initrd.
>
> To avoid the overwrite, introduce /proc/efi/memreserve to tell the
> tables region to kexec so that kexec can avoid the memory region to
> locate initrd.
>
> kexec also needs a patch to handle /proc/efi/memreserve. I'm preparing
> the patch for kexec.
>
> Changelog
>     v2: - Change memreserve file location from sysfs to procfs.
>           memreserve may exceed the PAGE_SIZE in case efi_memreserve_root
>           has a lot of entries. So we cannot use sysfs_kf_seq_show().
>           Use seq_printf() in procfs instead.
>
> Masayoshi Mizuma (2):
>   efi: add /proc/efi directory
>   efi: arm64: Introduce /proc/efi/memreserve to tell the persistent
>     pages
>

Apologies for the tardy response.

Adding /proc/efi is really out of the question. *If* we add any
special files to expose this information, it should be under sysfs.

However, this is still only a partial solution, since it only solves
the problem for userspace based kexec, and we need something for
kexec_file_load() as well.

The fundamental issue here is that /proc/iomem apparently lacks the
entries that describe these regions as 'reserved', so we should try to
address that instead.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
