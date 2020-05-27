Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394891E43BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyD3/SBuITD8lGtNx8J38ECeowCriBg00j76d9eeUtU=; b=S+cjto/g8GOzgt
	rNL3in/47xacAjhlqm4iwM8MZDpK6PILCC4IcExit7IWqiwt1QgLmUNxKd5IG/WsMvfzY+chKeDi3
	VpW316gT5yLB2N+s2/hzwK33+ldb3RGzbXk9hHOZO8iQpk/neNN8OBB2coQT+0FRiNbt0n/GwsBia
	tMRDBPSGS88Fcvf+TXiEAjG9n3Z8g43MHMQbca7vZ7sogCVGzFIkSUNNf9Uv6s6j7lO+5B493l5P/
	h8xUOAlFsBqPjYYgcPlNb1Qc4KW7EuVvRup90reht7svCQACayQQqKWXPJCbRgmMfNQvSfBXwye8A
	fud77ARer4ZVEvCp8V0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwAR-0005cm-Dy; Wed, 27 May 2020 13:32:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwAG-0005cQ-Oc
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:32:14 +0000
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F135207D8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 13:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590586332;
 bh=OC85yNs7gOcSSCloC5/kP+bzDv8/IqxVEjGTbV/Y3E8=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=pvKYWhgTEaEkMQJnqglbAcipt+u81XZfqiFSKooajfXbaM+l/5Kcr/KNU9xP8mfRx
 NetEIUW2wjqW6sDvqObyg8AblzZK63JIU//nvnbykyjh5KMY7+CIBASnJN1gNXHZ8I
 q6a8Yw8uyo0wRgAwZI+se8oLiTBYW6NT3BiFlyNs=
Received: by mail-ot1-f52.google.com with SMTP id 69so19160801otv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 06:32:12 -0700 (PDT)
X-Gm-Message-State: AOAM530vyCAM10RNr4Kub1+Rxzmq19b1xTSvTPZWetJXMEQoZBVhvt9R
 C/R08KUkX2sWf6vjMXEihPM+R+MK34I1bX1y+w==
X-Google-Smtp-Source: ABdhPJxlNx0RmSV48+0TntTNo9wUy6Gt573RLMY73O41A9xD3Y/lo7GBTIpPb/Nrm5UwVdi8hzuYAU/h17EJy/ZiMpc=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr4704836ots.192.1590586331655; 
 Wed, 27 May 2020 06:32:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200527112608.3886105-1-anders.roxell@linaro.org>
 <20200527112608.3886105-6-anders.roxell@linaro.org>
In-Reply-To: <20200527112608.3886105-6-anders.roxell@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Wed, 27 May 2020 07:32:00 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+bwnwQBpxf_Q5GNhCz8+-psH-ovpW80LMk=MK=zcbYcA@mail.gmail.com>
Message-ID: <CAL_Jsq+bwnwQBpxf_Q5GNhCz8+-psH-ovpW80LMk=MK=zcbYcA@mail.gmail.com>
Subject: Re: [PATCH 5/5] power: vexpress: make the reset driver a module
To: Anders Roxell <anders.roxell@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_063212_824542_21E56A2E 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: SoC Team <soc@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 5:26 AM Anders Roxell <anders.roxell@linaro.org> wrote:
>
> Today the vexpress power driver can only be builtin.  Rework so it's
> possible for the vexpress power driver to be a module.

This is the same incomplete patch I did[1]. As a module, it needs to
clean-up everything probe did like overwriting global variables.

Rob

[1] https://lore.kernel.org/linux-arm-kernel/20200419170810.5738-5-robh@kernel.org/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
