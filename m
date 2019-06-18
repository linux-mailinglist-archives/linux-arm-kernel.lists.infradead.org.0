Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9D4499B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+IhoCuXoZWcacDkCcm5D/pharpQ7X5emp8fQHZGDdQ=; b=rsRWx+Rwy7Gkr7
	uYXogY10Wp03hGot0cPgDlUFfCigy/4m++bbeOxFf2JhVqQoBZwoy14T/Z8ENHEs3vjTd91159+Fr
	SMKgf22Vjm8gZfKtoWvMj5+93m13izrHHLoDg9iZGRy8XH80iNQy/yLyz6yJEnQa8mIg4dzJUT0NG
	jyoZLC/NtzSTv0ha4EtQAZWXXY99g4SX+4yF2MnOztI7isu9CkpF3uMSqLvux6gxTKEElNQlAO6At
	Xmz7phm1VX11dilS6pLMXFXYUdkhTZY6jkD8mxNvvicrgkU5DOrJnceH7ggKcZpL114FwNbp+p3B6
	DwgvHp2R5i8TfQu08Ykg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd88K-0006l4-Vc; Tue, 18 Jun 2019 07:02:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd87u-0006kF-To
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:01:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C7B4FB040;
 Tue, 18 Jun 2019 07:01:51 +0000 (UTC)
Message-ID: <1560841301.21660.9.camel@suse.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
From: Oliver Neukum <oneukum@suse.com>
To: Pintu Agarwal <pintu.ping@gmail.com>, open list
 <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org, 
 Kernelnewbies <kernelnewbies@kernelnewbies.org>, linux-pm@vger.kernel.org
Date: Tue, 18 Jun 2019 09:01:41 +0200
In-Reply-To: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_000155_106848_20111CE1 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, den 17.06.2019, 19:19 +0530 schrieb Pintu Agarwal:

> Currently, I am trying to understand what needs to be taken care
> during suspend/resume.

You need to take care of

* wakeup sources
* not requiring services of devices higher up in the tree.

> With some reference, I figured out that hdmi power off/on needs to be
> done during suspend/resume.

That would make sense.

First of all you need to understand that the generic model is, well,
generic. Now this may look like a tautology, so let me explain.
A generic model cannot tell you how to save power on a specific
hardware. It exists to model dependencies among subsystems and
to help you.

The suspend() call is a notification which tells you that the rest
of the system will not require your services until resume() is
called().
That means that after resume() your driver must be functional again.

And it means that between suspend() and resume() you cannot touch
your device because what is above you in the tree need not be
functional.

> But after resume, system is hanging.
> It seems like vblank events are not getting triggered after the resume.
> May be irq remains disabled after resume, I need to figure out some
> way to enable the all the irqs again.

In your case it looks like parts of dw_hdmi_imx_bind() need to be
redone in resume().

	HTH
		Oliver


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
