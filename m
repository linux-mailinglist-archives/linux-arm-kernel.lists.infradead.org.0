Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A95162DB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:03:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMkutcIFSHsLpGmYNv9K8xLm5oQSMPWVNP8ansrJ3gU=; b=agqeW4ApMHDJV1
	tPS2DDr0v7AtVTZiWYYzyRGRutUo3gnyjsC9G4KYcmeEID1OpXl53/0WW4JQLfIy1Fm576XQZq4GB
	YQqA0NxdUV5Uzgg/qaBUsjOTZjL2ECB9qpKEfHz9CIIzI2nGFTVSaslEwqN0e67KgYiD0XLalGSG5
	zBgQrd8VKyHyD3Hqjt/dtwnJqtcW4QYvynqWWNtQgsCajJAYbW+i5yQe65riUJeYXsUVpvH+TdMT/
	vfXJWJNtwaLyUTZUcp5cdyqDRHcRRXaZU/vRQidwIY5I3vIAGnGq21Qfzc6CyMLxAHxF5+2W49eb9
	ZWcQ/tePZt3bqD6tpr7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47Dn-0002Z3-IF; Tue, 18 Feb 2020 18:03:47 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47Df-0002Ym-QF
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:03:41 +0000
Received: by mail-vs1-xe44.google.com with SMTP id r18so13616772vso.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 10:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GlpfGKW7Z7qqsPIr6M1r8SsQ9+KujAiypp/sf8wkQEc=;
 b=lL0ea2yJaqdzJznhETiLDc5kebVPD6fUG3B9tfyWKTZ258WUZqIBi3ugwAtw4baBH6
 NWt48e3z138kQj76wPe0eMdbxDtHFuCj46cOhMzutLMgh6pXXSstaVGWL1I0R683X/pB
 lB9qRgULElj1BnkHuG9mKZWSvMUqs09EIGJvDqjHdfO9Nlpk7W0E16YC9l8wh7rWwkM0
 1B+iBwV0innQhihazBBOLfnHkwhOHtPBWvp/lrjCkN/EvGkee1i5qlP6KGnorOXl5zH6
 58ceZ7W+kpxTn/ntszYHy4zMMoLhJtDJc+K+HeE6YBHPNA7FwJguydLHS49m9c3ML7d3
 pb7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GlpfGKW7Z7qqsPIr6M1r8SsQ9+KujAiypp/sf8wkQEc=;
 b=IMUx6UEuxWVEMaCoeH0qEwmzb5j8jd89WxjdFCE7o+NoTk0MbGCRHJa6qauTHUPsD0
 4nLSBrULDn4Wm8PvJYeQTF7MVmwBD/uR4AqRtNIj4WfUygavXYlHfkoVQ5dufUf2AfSI
 QXXmHQVoxUgd+7KyaCygADk24czF2+9+42Dm+U2oMVtUsVAjAO4I42AX9MuyI7Zi2lO0
 J7zutNOCsI3eHhpkOjc5ce7ZYYj4X/q0htIWoIryqpYYjUbIVl0iPaB4pYSNVOnzXjGS
 MNmAnF9h8Qk+9Vv9h1CkRGE8FWgypTgvYx93AsMdHrAZBIqb3DrYKCTavLZ6aPMzcq2e
 AZ4g==
X-Gm-Message-State: APjAAAV17MJSkY/gLzEGXHnQ8tFBkiGIdpE9abouHdFRxGvXflw7o26b
 3YRh+rhBHAWd4N/0chv0/qoypQep7vP66D1hflw6ag==
X-Google-Smtp-Source: APXvYqwsJVK+b7dFqEdssZ17+a6M3lpXzATt+O5ZndOoPbfvqi8IS2/Oh2L13H9e1uCIJ6gtXpivkKwqRQXYsYao5P8=
X-Received: by 2002:a05:6102:1c8:: with SMTP id
 s8mr3019888vsq.44.1582049017940; 
 Tue, 18 Feb 2020 10:03:37 -0800 (PST)
MIME-Version: 1.0
References: <20200218164906.35685-1-vincenzo.frascino@arm.com>
 <20200218165451.GE1133@willie-the-truck>
 <b6bffd75-12fa-b91d-428e-2bf927636161@arm.com>
In-Reply-To: <b6bffd75-12fa-b91d-428e-2bf927636161@arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Tue, 18 Feb 2020 10:03:27 -0800
Message-ID: <CABCJKufwkMNPMpPdK9H1Fjqc0KhftUCcnL9qi+fk3FgeNSOfsQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: Fix LSE atomics with LLVM
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_100339_851146_AB1F1646 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>, amit.kachhap@arm.com,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 9:43 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
> The integrated assembler as far as I am aware cannot assemble the kernel for
> reasons independent from lse (AS=clang generates a lot of errors). Not sure how
> Sami is testing it. I would be happy to learn it myself.

We use LTO in Android kernels, which flips on Clang's integrated
assembler for inline assembly only.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
