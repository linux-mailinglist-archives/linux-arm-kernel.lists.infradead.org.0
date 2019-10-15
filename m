Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B62BD6C6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 02:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFN0zqPTazYHqMEyCryJkZKEBJgkQZoucj1xewgYmso=; b=c1UNEARCjqHNuZ
	0NJsFgDYRiCcqdX+9AfcMouCPrPnnBM7ZCYT64n1rjqmLWcZYs9bOMyV5wAda/JiO4cuIWKnf2mzw
	fejkgeQmJyWQAHDKWZOtr87KPyQvHrLUUCzyQRnwNZd2VBtQICsmdI07JvuxIOsDzV4flM928/THF
	1cIZDD3A7dE7iM4gbHL26o31ihnLMJ20yVX9y5flIpIoPcARA699BWvzie5v996gO9Wv9Mfl++Y+u
	acy24PVpNMYCo3UXykXfFhLNYot38TyCGA0Tj9Ndv7uv2MjIKzZeWzrzNMz5P1CU7gygGFZQt7AtO
	PkcB0tdRPIBp9gJ9bvng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKAhV-0002nb-IK; Tue, 15 Oct 2019 00:28:33 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKAhO-0002my-Ef
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 00:28:27 +0000
Received: by mail-vk1-xa42.google.com with SMTP id s72so3940194vkh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 17:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=quuBF4iPY/Wt9WEvG0fNAxmwp7tynvi1WojC5cjb9xU=;
 b=lpj1e8S6Zo+6lpWokhWTMZ0qtY/2F9b3w1zpDJJLh5zcIT7iWstPaaKb9qdL73rMgR
 2F1spK0bQpV+t7U/Aqn5vmuNrfpshwwIGsXyC3BQ3zP/84vdATleZRvm7ApudJoIzTrK
 nZG+TWgouR4uaQEYlQrhKPKr4zPAsbB7p+CVm/wiWAooGCb+zAMb7z0vSuadL4tjCg5w
 2PUEsKk/hLYxIPoMhdXT/L7KJULlpVPAaPCMrerdCSrLr4H+GjOB0B7kLGc5uRAQV3XT
 0nHAdk6hvIlWaMwp02bCP9/lgiKTwU3L2Nczjh2Z02BMUXqt890G3t7XEqavr0q2H+PO
 TJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=quuBF4iPY/Wt9WEvG0fNAxmwp7tynvi1WojC5cjb9xU=;
 b=ulduDKh8McFUQfEQWMxnLosCaayPVHQoLPc6Oa/qKRAr2hBz7v3JNPgAh9pAWeLlOp
 HbhehKVAQckxJ/njKLOKEfglnwV9nK6U6nfpwaEwjMwma3Jari+HBWHwIQPkqSLv3sQK
 7f0Ne1JCNW4iUFJmO7dfb3WqL6CDWp6kwJzuwwWj2l79JnQ9xkNufql3djdycRI8MZho
 Gfr7z7H72RWn+tSkSNIwrnBost/JuSNEPOkfklZEEEahIpCZZPAbueXENFwtmG34z/+U
 mtS3bxKO1Debrq0HQhvtR8k8GRBYeY5GR4OZV9xwvnNtEQOv4VDWUB+jPhsGs56Wv0fD
 9JCQ==
X-Gm-Message-State: APjAAAWSHyuWS3DlUB6hSLYJaR0/bKVs//cnDj6w/2M1yz+wqaPVaPf4
 59XbIOG0tNjFaghy30blEzbMIjDVxWBPYQSLQezNgg==
X-Google-Smtp-Source: APXvYqyk/oPHXB2GPTLRU0uqExS4SkvlQyK0IdEb/p6sJ+8DrKdEkZblYAOKqR5cougkDieFGPLVX7jjDtHgP6dgaew=
X-Received: by 2002:a1f:1ad4:: with SMTP id a203mr17612116vka.81.1571099300495; 
 Mon, 14 Oct 2019 17:28:20 -0700 (PDT)
MIME-Version: 1.0
References: <20191007211418.30321-1-samitolvanen@google.com>
 <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
 <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
 <20191015000017.66jkcya6zzbi7qqc@willie-the-truck>
In-Reply-To: <20191015000017.66jkcya6zzbi7qqc@willie-the-truck>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 14 Oct 2019 17:28:09 -0700
Message-ID: <CABCJKueDZBd1TZyNTH-jo=DsVeze=mout1ooK5sSbPb52RyjPA@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_172826_538518_1E38B5D0 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Marc Zyngier <maz@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 5:00 PM Will Deacon <will@kernel.org> wrote:
> Is there any benefit from supporting '-no-integrated-as' but not 'AS=clang'?
> afaict, you have to hack the top-level Makefile for that.

The goal is to eventually support AS=clang and this patch gets us one
step closer to that. However, with this patch (and the LSE one), we
can already use Clang's integrated assembler for inline assembly,
which is a requirement for compiling the kernel with LTO. Google has
shipped LTO kernels on Pixel devices for a couple of generations now.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
