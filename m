Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CB6155EC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 20:48:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gQuEofZtB3dquSMiNeesE296XVvUgU+cpW6BasYJUE=; b=iOSqTPwsh7G3DT
	37sTUWdAg5EitJGSsMYiiS9vvPeY4ujHul9cTv9x7iaAovQEiFJuxcIaseCOiU75DwhYgJUBmDivp
	xjdYBBHy9gxwx5nlhTfcYvpMNlLje28W3zvQN4CZa+3o4KYQ/jVRZxNa4HJkDz8nPYmH7hOrvczdT
	UBRkjqqQMwq2+ds1DGjQjV0hq5/G5JKFo218BrhN/rMjTFKGnAh18rnR7uBEMM/YVuhWPNFFiOTV/
	0FCsfYTZ0JNhbUGgrLk+OyWrGRSdXy1DQIkx0O8SQVXYkuKSos8v79TgEjNu7KNE5pF8HsL9cqKYE
	U6OWNokChVbfEbSVOCAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j09bh-0006k2-0L; Fri, 07 Feb 2020 19:48:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j09ba-0006jc-H1
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 19:47:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id a6so255079wrx.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 11:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ADmEob5aCHIMZYdk17bc2JtUL+648UgN60jHGzFUmnQ=;
 b=ZtenNvpggSNUBFW84py2rlNqNs1p27CT9g4Y0dQKsE0VKS/mqmxCYdKR44F4KrFJmH
 ccgRRcEazb4hunqtwY7yIYDj1VI46LGOzVIA1W3gOalQEHUL4XoeKvTAwL4LuWC7wEfW
 ku9j4hCIBFMt2Y6ZbkfWtXyv887LDZ2Ka8QncGwcHx4pHRG7UqtVJrnYarZuytQouWff
 1IqZL2Qa70K/tU+n6B2Df3bQS2a2DKxwqYeKbg3UmzWAjmj1ybwWKOvJzy1IArws51Q6
 VR7tmPpl6QbokDZMdKvp8ApdMtLCzEn/oW7hOcCEXhWH1uHKy5lV+e4K7EWISk+C3Igu
 axRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ADmEob5aCHIMZYdk17bc2JtUL+648UgN60jHGzFUmnQ=;
 b=WD1resnUTkAIJWslpCoysSHNqfTHiIpRRS1p6YvbFjGJ6ek6bxFsnZ3isatpxepM/n
 SqUirOaNnicgvFvuBCbVLyX56ZRjFCmYfIJbOY4tISIQ1ymf76LXSe12KRbpZ/r1HqIw
 CipVdZLiKLeAMOVBTa7qhBWw2LebQ3tqfSPSOzaezaa9vaI+Q+sRIfKqCdjr1nVK+iTH
 NE0X6Nv9poOawqSfv6xv3npBw4EF7NC16zgffqABNZICPAsUd7f/L1O/ZEjOzKRmaCy9
 6kk4XjphGNBemjYDmRF9mRbrckTgsJlFQ385OyXgXsxKpVKfV3Bpr22BeTD8q37PQ2bl
 xkUQ==
X-Gm-Message-State: APjAAAUffhxcU1/T76GseJMX8UpKMzAy/CUFibk1E13v/r9EiooxB0w+
 zZMb2F1Xv8myR13sIv56B/iqqgJD/4P2etCmbMARiw==
X-Google-Smtp-Source: APXvYqy8ulALAFMRrpiERJSH7DxxaKYXZW/FVT6fUplf6OymnaPN0l0tMb7TfG90cZJkFEOJdBoIgpGS95aYvd5xNtc=
X-Received: by 2002:adf:fd8d:: with SMTP id d13mr643736wrr.208.1581104877140; 
 Fri, 07 Feb 2020 11:47:57 -0800 (PST)
MIME-Version: 1.0
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200207184532.GA3276112@rani.riverdale.lan>
In-Reply-To: <20200207184532.GA3276112@rani.riverdale.lan>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 7 Feb 2020 19:47:46 +0000
Message-ID: <CAKv+Gu8Z3=cqbNxspLXAgM_8wEm+to2TWRjpaaC231MbwL2Ycw@mail.gmail.com>
Subject: Re: [PATCH 0/2] arch-agnostic initrd loading method for EFI systems
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_114758_595749_979880BC 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Laszlo Ersek <lersek@redhat.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Feb 2020 at 18:45, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Thu, Feb 06, 2020 at 02:03:50PM +0000, Ard Biesheuvel wrote:
> >   data structure. It also creates a time window where the initrd data sits
> >   in memory, and can potentially be corrupted before the kernel is booted.
> >
>
> I don't quite understand the time window aspect -- can you expand on
> that? It seems like the same time window exists between when the kernel
> is loaded and when it actually runs, no? Why is this more important for
> initrd?

When using loadimage+startimage, the authentication and measurement of
the kernel image occur during the call to loadimage(), even if the
source of the load is memory itself, and startimage() is typically
called right after.

The assumption is that it may help to make this time as short as
possible for the initrd as well.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
