Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F99A7979E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 22:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39br6F4V0nZJBlArgO9mofFTSGx+6SCyWzeCcxvnJoA=; b=FO6z3bLRJ/L4vp
	utJfxICbJiDGD9bYIPCFMChzdQQe8vmD7GCNgqOMbIdbTNhxlSRrsdPfrVmdOzT2lWcy4UQOFlmAC
	Ww6Ckzqgl8YnDc9IzAdhFf3e2EJLSOE0KiQBsuwXB/VSVm3abfzbLF87nqRcf0FL8jPjWLqZPvPDr
	DxrQ57kjX1rmeJl12oIg9+QVCuddQowCzrrhA7WburCH61CThKpFjbivTk2ApIBOjlcCyywYwvC40
	WBn5NbpLQvHTrjzXlMbpA78pOciA1D7t50kIoJ1ALhv9qcOLmEHijbqkRFMFiQHrURI58t7PaYQgC
	ZQ5svTBgUVrt/lMj6Kcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBpn-0001Ay-2s; Mon, 29 Jul 2019 20:01:27 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBpT-00018P-3Q
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 20:01:09 +0000
Received: by mail-ua1-x942.google.com with SMTP id j8so24503583uan.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 13:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nrAa1Owq+7NF6kk+ji/D7dPA87Icvc1pwfZh0czgUOU=;
 b=KTuQ2tCCTKLQ+MdVBkF1NA2b4xEEcgaUdjPrZz2EtFVYtw5sV+nIHjAbJ3+qjj6Ilq
 tnwzX4NxGstAiaYTWTQASw87/Zy5ukyWTpuSXrya5dITeeRQe+utDjnW/5/mkr2cA+tw
 gy1iSpJRyrEi3LrDpHe4NRzH+ZGNobRWkAi1XVzDXtf9XYqw+4FyyuzbQA7J6+V2nRiQ
 HZnWb7DZKGMvX+rsKZk4DxCOWBxK6Sj8U01TziqihRA5Dps5F4btJ6/M0GG6SOYExZNo
 pMsLk9Q1QhH/HC4wI6BooyZhEB5EKXq5OOm6oo6gi+Ma5JG6usNdkd9igrdPIWDZ6jb5
 Bv3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nrAa1Owq+7NF6kk+ji/D7dPA87Icvc1pwfZh0czgUOU=;
 b=JkLNg6wnbB42ihsqw0cFksTgVGTgmtkQ7KbpoRWMemk/BA+JONnSTvPjW8yNWW/4Cd
 7OCqK7pwpeU7U3XctOhvFPUSqGn3XDnKiK6tJnZRZUSjfs2JS1v6F7wMJZzTgskTLFte
 3enP1oeQgLJFkLEW5juhovwuAg6iVIVg71Y+QHLljkDsIO1kwiwgtx4Wyu4ajj9kjKto
 tb+9CjL0unACfzR0GNgK+I+FoYp47ZViE4/IjSIGPjzEcK6k273LmGQHCkAN9D/sG+T1
 xs775nPMmIyqsZo1thLBiRXHCB/fGjVcONzWeoycntOMAi3QoVOzaV2OGXANPMOjxlah
 H54g==
X-Gm-Message-State: APjAAAW2h/wcII602eFLKQyS2aWb6iGWZK42gg6zju/cJ0ps9NVXXzS+
 XI3xnzg8+jraXg3FmxfKxT4gdb5ZNKcMye/knkrR7g==
X-Google-Smtp-Source: APXvYqwhPQPemv+qJb8FtauvuwNdrlnC/oqldridgsTQWGHVDGlmDChVU2kqXecpIq/qhzuSVWLGRMfVN0186lvc9ww=
X-Received: by 2002:ab0:5922:: with SMTP id n31mr1842306uad.103.1564430462959; 
 Mon, 29 Jul 2019 13:01:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com>
 <20190712193846.174893-1-pcc@google.com>
In-Reply-To: <20190712193846.174893-1-pcc@google.com>
From: Peter Collingbourne <pcc@google.com>
Date: Mon, 29 Jul 2019 13:00:51 -0700
Message-ID: <CAMn1gO4KUq_Q39Rj3FWs6bG8BkCpGhS7gqYtBxi9EtrX=J9uTg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: Add support for relocating the kernel with RELR
 relocations
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_130107_459550_3275D6D6 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 12:39 PM Peter Collingbourne <pcc@google.com> wrote:
>
> RELR is a relocation packing format for relative relocations.
> The format is described in a generic-abi proposal:
> https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
>
> The LLD linker can be instructed to pack relocations in the RELR
> format by passing the flag --pack-dyn-relocs=relr.
>
> This patch adds a new config option, CONFIG_RELR. Enabling this option
> instructs the linker to pack vmlinux's relative relocations in the RELR
> format, and causes the kernel to apply the relocations at startup along
> with the RELA relocations. RELA relocations still need to be applied
> because the linker will emit RELA relative relocations if they are
> unrepresentable in the RELR format (i.e. address not a multiple of 2).
>
> Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> compressed (lz4).
>
> Signed-off-by: Peter Collingbourne <pcc@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes in v2:
> - Reverted change to RELA processing
> - Added more comments, as requested by Nick and Will
> - Added a feature test for NM and OBJCOPY
> - Made CONFIG_RELR=y the default if the tools support it

Ping.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
