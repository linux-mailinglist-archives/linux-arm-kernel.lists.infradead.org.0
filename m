Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C46B1FD925
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRytuxdfgOkuEfgeIsD1rfBeEG49fZx3jaVFtAFXFLs=; b=NpAZtQBbOn/Jhr
	ZatXJBC4KHmNZ/5IhZFD4bshzYgzckvgT+UFgYtII0qH2z8iqksDJUz2SzH686K2w3yP0rGG/7yvq
	jvJVjN8BuOkC1vC3uY+7WtmO5nRfs2OKGHOA2mX1qsljZzqMlZXgjbgn/IGDJ76DuGJGEEwiqH3kW
	RI4juiPqVTO5j/LgRX2wjuw5frx88FFcYF/0bciWv2dC7c7soXq6JfzvkyHIo62HPl6hAFMYXoM43
	ClKJSUc0jft8IgU0gzYC0h+qyslrzW4U19GFI3o85KeRrFveCe6poO1Qna3Ls0kXDWZf2zBW1dAVY
	dV7y214sI43yeT18p6+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlgok-0007Bq-Bz; Wed, 17 Jun 2020 22:46:02 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlgod-0007B9-4D
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:45:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id e4so4908288ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 15:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yawPnxDk49botwMdb+iaW6FZN+F8UQyFiiskYiOSfeQ=;
 b=XDyZS+++Zkn6BIBUSi9kkFoJ/8TqtbS8h/v3gA9xSe3Ij7PK8at9hy2SlW/d1Jfo6o
 7eNj2kG5JhYecfrqlAgHCWpgrSHi8DGUbTKdHWVoVf7ojfbVlbjRIAT7t4jjxX49kfTo
 BkeSsnuxB03xXOKCVfjEVFSMvjQrIdu1Q1qV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yawPnxDk49botwMdb+iaW6FZN+F8UQyFiiskYiOSfeQ=;
 b=kxSqc7D+YgvszyjNK+cTKIOCPDQEkM5lIWoHXVbLjwKaUL3qIpg6qDF8eMiPfPNR6x
 acQd8tdE9bH39ub7CtU7JaF3mC7IHpixVgoJ6n5rfpB0i/4aKeMvH18vTxyQnrGu9/do
 qffWLZ96YP5+7jFodbHerEDQ/sJgL7duYzAcjgm9RVZ93PRjmCzjauBseNW0ZnamQLfb
 baLEfRLRpV0cPvDtUdWOMhVNEih1yJOvICuMGgMuLz3d7cUKU725RCqIL8VezPlOByEt
 6s7QH77B7XuDir/pwgGg7dtkPtuZap0qg5xOlx14kfHT9sFSOqpgFcYA5fvHi/62Jlww
 wFrw==
X-Gm-Message-State: AOAM533kO91fUCjYJN0EgSeU7wPbfd9S6SGMpbgH/v0DeUChPOgX7Ep0
 J5qfmXhbc+fdpxrwNZJXFDiS0lcuSAY=
X-Google-Smtp-Source: ABdhPJwgtChXrJVdDPQ6taB2Bb6VCSv0OGmZKNmCRPrAMCoGdSmq3MT9csUc6Ou3H1JZWDMivQYJvw==
X-Received: by 2002:a2e:891a:: with SMTP id d26mr739960lji.384.1592433952224; 
 Wed, 17 Jun 2020 15:45:52 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com.
 [209.85.208.180])
 by smtp.gmail.com with ESMTPSA id r22sm256736lfm.30.2020.06.17.15.45.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 15:45:51 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id y11so4887302ljm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 15:45:51 -0700 (PDT)
X-Received: by 2002:a05:651c:1181:: with SMTP id
 w1mr707524ljo.432.1592433950682; 
 Wed, 17 Jun 2020 15:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <1589946996-31264-1-git-send-email-pillair@codeaurora.org>
 <CAE=gft5pcHwK8yjObNSSH=U_B6Pz++bDaeUxZhPyJfG2E7LRAg@mail.gmail.com>
In-Reply-To: <CAE=gft5pcHwK8yjObNSSH=U_B6Pz++bDaeUxZhPyJfG2E7LRAg@mail.gmail.com>
From: Evan Green <evgreen@chromium.org>
Date: Wed, 17 Jun 2020 15:45:14 -0700
X-Gmail-Original-Message-ID: <CAE=gft5So9Uk2UqRWs2zFO_iD+6ofMy97bKP4HpgM1Wu6Duxvw@mail.gmail.com>
Message-ID: <CAE=gft5So9Uk2UqRWs2zFO_iD+6ofMy97bKP4HpgM1Wu6Duxvw@mail.gmail.com>
Subject: Re: [PATCH v11] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
To: Rakesh Pillai <pillair@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_154555_186797_F1DD03D9 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 9:19 AM Evan Green <evgreen@chromium.org> wrote:
>
> On Tue, May 19, 2020 at 8:57 PM Rakesh Pillai <pillair@codeaurora.org> wrote:
> >
> > Add device node for the ath10k SNOC platform driver probe
> > and add resources required for WCN3990 on sc7180 soc.
> >
> > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
>
> Reviewed-by: Evan Green <evgreen@chromium.org>

Looks like this never landed anywhere. Is it blocked on something?
-Evan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
