Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 887E2A9CC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8o3zFMK3+V2rwPiFea7nDN9UX9AR/XyLUC3zRyPBGUk=; b=lZu6bR3UgynIrD
	teNyoTZcwl9O9hAEYU1wrHB05HD10WsqnlD23m/8avHP+fMutC80jhv7Sda8o5FRjJ1Va4q0hblnZ
	6MPLXu0sYUoXJbgnXSfR7QYUBGZ6nETsQhRZDSxeqlVbryM4hBO+ZC0kSUXO98f8rx7wYKph7+pmz
	3/M7QuH8neBQUZG+OlnkV9zPabuZbT431N42bYwNjg131DlrQx2v1Uq8a97CeXTWThIgVkkd2u2dM
	LHZiOC53mHBytXOlMQtjQwfwwWDfBfhb/3CgvnepNa57VIS8Ck7UEsDW5WPTbjfe8ySSA+ZtdDnhZ
	pZxwNvSmBWb18s7eFq5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mxd-0001ME-Gg; Thu, 05 Sep 2019 08:17:45 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mx0-00014r-TH
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:17:08 +0000
Received: by mail-ot1-x342.google.com with SMTP id y39so1297011ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0xPzSESc4AZSzOz8iuenGzI1AlT1OxyaOVK/bXB62NU=;
 b=OuTz5wvUQ35QYkpSKKPCxxQaaU1HK9r2e88MGLbbYqoqxReti2Duuk8kuS0KYSC1Ip
 pdHLMs7zhO419UJhHXlo+5eiLjxOlJzvBJvCkJ3krsKonpbm0VX4vie2pR8FyWB7NvC8
 xwNADNZ++jqxlZ73zV3Fv4RHQ1CtN/gCiJYwY6zC+I9oUFbUzixbhoF1ofdOq8nGsV/x
 zsdighpHoFIa+hFO9Gfuw4SI4cNG/br0SpICPLmLwP7JT0b8Rw1es+25pX61XTWttPNd
 pNvFwcXfQACkPtI8sYYB2mxINaHDTZiPwLrnEMjPnV1KdzshSBt/8xJLmUURA816hh65
 xaDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0xPzSESc4AZSzOz8iuenGzI1AlT1OxyaOVK/bXB62NU=;
 b=LE4tzLInL91ozrYKg/2Y5rF203Hwb32UIIh+Xv+lbNQv3nYJBs316hLh3HmlTDugqV
 uozZbdnel9LCXx1j+hufjAyY9duOHJhKqEWmlgX4QmPjgY4TlJkue4btsXgh0Gxk5Rf1
 AEtvB/33isv4JDaUJZLl1SNUJ5WvImx2j6npn3Mncbjob3iZDb8+J0jRh5fWlZnAqjEk
 NVflGUw8T0yoj3g95i8aYpEQO+c6XZ14uloXAS1lBmqV2TY2/fP0XbAXiWaMjeWktgm8
 vJXfbbJldaXvRKCtlxAjD9xsN9VezE1fBNZK0pWUS2V7YNRiocxBrSGI377g6x6OwZ8R
 I5TQ==
X-Gm-Message-State: APjAAAUR6ytikJHGarvHR4tSMEMCi4MvZAraxUdXJT4hjVnme8JfjXZe
 TLTxp+WClum6BvCfJ5s0BDzznkF7C87rYQZjOptFxA==
X-Google-Smtp-Source: APXvYqy24rjXe/FVSgFiU9SxJ4vZK2hJu//H06XcbxMiz2ueKtSmAR0GsP61bsSotW7CRw5je/6qibK/HvRFMTwLvZ0=
X-Received: by 2002:a9d:5e11:: with SMTP id d17mr1498113oti.135.1567671425605; 
 Thu, 05 Sep 2019 01:17:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
In-Reply-To: <86r24vrwyh.wl-maz@kernel.org>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Thu, 5 Sep 2019 09:16:54 +0100
Message-ID: <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_011707_063893_499336B9 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Daniel_P_=2E_Berrang=C3=A9?= <berrange@redhat.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Julien Thierry <julien.thierry@arm.com>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 5 Sep 2019 at 09:04, Marc Zyngier <maz@kernel.org> wrote:
> How can you tell that the access would fault? You have no idea at that
> stage (the kernel doesn't know about the MMIO ranges that userspace
> handles). All you know is that you're faced with a memory access that
> you cannot emulate in the kernel. Injecting a data abort at that stage
> is not something that the architecture allows.

To be fair, locking up the whole CPU (which is effectively
what the kvm_err/ENOSYS is going to do to the VM) isn't
something the architecture allows either :-)

> Of course, the best thing would be to actually fix the guest so that
> it doesn't use non-emulatable MMIO accesses. In general, that the sign
> of a bug in low-level accessors.

This is true, but the problem is that barfing out to userspace
makes it harder to debug the guest because it means that
the VM is immediately destroyed, whereas AIUI if we
inject some kind of exception then (assuming you're set up
to do kernel-debug via gdbstub) you can actually examine
the offending guest code with a debugger because at least
your VM is still around to inspect...

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
