Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C62BAB94B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s869ulGyIKX0zr872I0/hvbvSiPRVbXOt7C+RcqwdTc=; b=H3JCuaccP9H/gN
	cGE7bstT97ydBycHScw+mrHWS/Iu7PCE25ORLhwUscGFQt8wokkiHLLyycQB5GKquV6qxJs+2Rqve
	sPxqquEaUU88z8688CSdSk6O5lx813pdjnD9elVFPFpx6SKKvdNCxOVRC8pqjAv8x3utoZlSlV14p
	5u70EsoV39nI36fc5HUjbkX9NmEJHGWxwaPjSqYn891Aaeeij3I68UzgPoDqb0HOgJeh/6icNYzoL
	//liYL7xM8Cr6kfFx/WfiIIGOT6f/WXkTSqRzWEruTfDPMUEflbox3r1OZhXLC41nVxkk/iDEESe4
	yEKVMuv4deROIN4AVzeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6ELK-0008QQ-QQ; Fri, 06 Sep 2019 13:32:02 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6ELD-0008Pd-1U
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:31:56 +0000
Received: by mail-ot1-x341.google.com with SMTP id g25so4467922otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 06:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2e7BdIjA7tp8BLDXeTA/WaYjf5EqoeihfbnfZF6VGmM=;
 b=PHfICUeS2mGCEh2CUf3C4hLmGAZ/WIw5tAL4fbOBgvE0Y8Ltf9mXNE3/ktZvwiHkB/
 dFroiYLtzUzJrSiZFcu/QpXoDOSrvwWUQ0H3FFFkdXSseWIf2bDhqlGbc2qbRZ9oAXuP
 MGgVx6djL4ok5HVHhvhpy0lUn0ocg2WuN1gW/IIFZ0ZI3Uw3w4gBtrrG1ljJIdFozS4J
 E3gb7oNUQcRxPkaKWpXR2gFZt3fZqSNRuQUOxJFDOyVR6ESPYtAdrOdZvsgasgM/e3uv
 S9KxhITdI8qURQHjP4qbzOcYpPXrElyuyt6BAQB+J1zNYBrAx+CQZoknoBo6x+/jcUvZ
 5lYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2e7BdIjA7tp8BLDXeTA/WaYjf5EqoeihfbnfZF6VGmM=;
 b=C08ZW0/PRFTpStIPJvrdNUoDjZFXpiIR8oo/wp7/rmwly5RHZLysBCj8f5v6YuicGS
 upA/ADUEsfMmGIB9PWLtwmDCVBeWD24+J/G3PDCW5UP+ZxD163deUKSy7ZnSQH+hMDuM
 BiSSsqCQsEdlwIntGsLqS0uh839tqTkV7LiTYGOnBIlsxXACN/rCVeiiQ6ECZeWeVaTQ
 nbZtaVqdAFRH589bSTtU/1z3eVLzj4ojoEUD1eJhxCP2+fNKZkV+5Eb2eC+2weQNrql/
 qMG/08rd4J9Q+5AI7Vut+cziboJSrQQMoQZhW5/oiG4DOwnBlHxnqDSwjsA4N5UismNU
 beSg==
X-Gm-Message-State: APjAAAU4p0zIed/+HLOrJa71CYE9KKN0zBp9SZ089IgZbPVAMDzCh3VA
 m4HLCL9H0yQt2znQL0mo48HaGcjdP6lYpkPmoXvZ5w==
X-Google-Smtp-Source: APXvYqwHxB0tCnJPTv4Q3uXRBF5mEn1yIopnVEF/pkDXQ5Kdt3akKBuuprc79qQjbky6hEBpVz6/HyR6CfvcxPFrepI=
X-Received: by 2002:a9d:6a8a:: with SMTP id l10mr4739602otq.97.1567776713698; 
 Fri, 06 Sep 2019 06:31:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <86mufjrup7.wl-maz@kernel.org>
 <CAFEAcA9qkqkOTqSVrhTpt-NkZSNXomSBNiWo_D6Kr=QKYRRf=w@mail.gmail.com>
 <20190905092223.GC4320@e113682-lin.lund.arm.com>
 <4b6662bd-56e4-3c10-3b65-7c90828a22f9@kernel.org>
 <20190906080033.GF4320@e113682-lin.lund.arm.com>
 <a58c5f76-641a-8381-2cf3-e52d139c4236@amazon.com>
 <20190906131252.GG4320@e113682-lin.lund.arm.com>
In-Reply-To: <20190906131252.GG4320@e113682-lin.lund.arm.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Fri, 6 Sep 2019 14:31:42 +0100
Message-ID: <CAFEAcA9vwyhAN8uO8=PpaBkBXb0Of4G0jEij7nMrYcnJjSRVjg@mail.gmail.com>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Christoffer Dall <christoffer.dall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_063155_096328_43755A33 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?Q?Daniel_P=2E_Berrang=C3=A9?= <berrange@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexander Graf <graf@amazon.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Sep 2019 at 14:13, Christoffer Dall <christoffer.dall@arm.com> wrote:
> I'd prefer leaving it to userspace to worry about, but I thought Peter
> said that had been problematic historically, which I took at face value,
> but I could have misunderstood.
>
> If QEMU, kvmtool, and whatever the crazy^H cool kids are using in
> userspace these days are happy emulating the exception, then that's a
> viable approach.  The main concern I have with that is whether they'll
> all get it right, and since we already have the code in the kernel to do
> this, it might make sense to re-use the kernel logic for it.

Well, for QEMU we've had code that in theory might do this but
in practice it's never been tested. Essentially the problem is
that nobody ever wants to inject an exception from userspace
except in incredibly rare cases like "trying to use h/w breakpoints
simultaneously inside the VM and also to debug the VM from outside"
or "we're running on RAS hardware that just told us that the VM's
RAM was faulty". There's no even vaguely commonly-used usecase
for it today; and this ABI suggestion adds another "this is in
practice almost never going to happen" case to the pile. The
codepath is unreliable in QEMU because (a) it requires getting
syncing of sysreg values to and from the kernel right -- this is
about the only situation where userspace wants to modify sysregs
during execution of the VM, as opposed to just reading them -- and
(b) we try to reuse the code we already have that does TCG exception
injection, which might or might not be a design mistake, and
(c) as noted above it's a never-actually-used untested codepath...

So I think if I were you I wouldn't commit to the kernel ABI until
somebody had at least written some RFC-quality patches for QEMU and
tested that they work and the ABI is OK in that sense. (For the
avoidance of doubt, I'm not volunteering to do that myself.)
I don't object to the idea in principle, though.

PS: the other "injecting exceptions to the guest" oddity is that
if the kernel *does* find the ISV information and returns to userspace
for it to handle the MMIO, there's no way for userspace to say
"actually that address is supposed to generate a data abort".

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
