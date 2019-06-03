Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4956F3336D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuyjL0PJBp2gG0fwGYYIlWp1ZmC5wAbrC8dC7w+eFLU=; b=t7XWrf19Uky2AS
	JbKx0a33CaT51mvTBk7RO4MhauNbwb/9yeIurwXhDmnlyUbTuYOV09teW1OLU8u/Z5QTX9mLft37u
	fB9Usy9S8gp1JrFfYftkVCjZSmo3rdRnjmbqi6QdACAuume7nR64npxsSR93YWgRlbQR4Q0g4ZaXt
	zEOryy+x6nyAEr3MG//LDUoaZ0maUjEMpLDgOTUfOXoXm5Kthfe/Nly4a8rxH+Msy6BsR9pcOtQAQ
	RkaigkNpKsgFErNyzGazCYe1i12jJDVwqPDH80m5TEOJPutnn4qusKACO62njOk0k3Txyo9FyMCBA
	3jL26zUcq0dYN/Bt628A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXooX-0003mh-A2; Mon, 03 Jun 2019 15:23:57 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXooQ-0003mP-8n
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:23:51 +0000
Received: by mail-vs1-xe44.google.com with SMTP id u124so911408vsu.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 08:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9judtLYfqHwUB7Dzm0O97CSTyEDxQ+ofDcdysxtxnb0=;
 b=SV84aIFwcxu5sQtz4Nc3vAuL8WayY9YwJpMXI/qPu6GbsJQr18rz8h9V7oHkhg0GP1
 xUP5txmTn1J8KStVFrf36YIhS03wm6GWKebOIreLtqeKZnZKA6k4NX9vKIl8vnHuI74D
 owyyEzL8cEjPTrp2WzUX3qTKDJdOlkpxMU7I4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9judtLYfqHwUB7Dzm0O97CSTyEDxQ+ofDcdysxtxnb0=;
 b=qFL8HzNZAZvJOeHqOvMYaO4OOTCo5SmNh5tl4LqxN7d+Ifak+80MSUxJ1mTq4l/URX
 taEC6lPd9A2X4jitOg1nUCqaFIl6mUy8O8uaxUdCDxs9V8JiaWOvEVC/xFrUOYpz48iP
 QUXtTAm6D3j+ZBYIWc9it03cOiPxkoKQ0SMbro+iDpcpRJe57V1/kPjBcTeSqLToyP81
 jBnKJZgO7/OBQil9XN6vlkmIcXwWa9yhdTlD5X0O7uU2JjCIenw+MIqhI0sb/HL8sF2q
 ZtMkKILEwdJDVW25zU1iybcmXbfDLFCRAM3mY1xfYkK//mqxi11z9XpWQZcM9g0hFbEm
 RWJQ==
X-Gm-Message-State: APjAAAXESq4nyVcw3kGmADRrrFqiaGXWpDp+Pe0lKZNrBCyWrt3B4rqI
 zSrPVtGw3USmpjUXZAr/cNSHNfb3mcM=
X-Google-Smtp-Source: APXvYqy7BLNvNOHO60+dZ7TgqpFdumpybo1YM346qhgxZQkTr+o5SKubsEIbMwagr+qZE4mOFBMjOQ==
X-Received: by 2002:a67:7a0a:: with SMTP id v10mr2227328vsc.203.1559575429283; 
 Mon, 03 Jun 2019 08:23:49 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com.
 [209.85.217.50])
 by smtp.gmail.com with ESMTPSA id l195sm17110707vki.54.2019.06.03.08.23.47
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 08:23:48 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id l20so11499561vsp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 08:23:47 -0700 (PDT)
X-Received: by 2002:a67:1cc2:: with SMTP id c185mr12704099vsc.20.1559575427301; 
 Mon, 03 Jun 2019 08:23:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190507234857.81414-1-dianders@chromium.org>
 <79ca5499-6b7d-fe55-2030-283f5cfb1d27@rock-chips.com>
 <82480aa5-ab2e-11c5-8dd5-c395f72fc6e7@ti.com>
 <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
In-Reply-To: <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 3 Jun 2019 08:23:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XfxT+GB=WvuGm68SaUWhSg7vS5AjQ-sv9e5wdKN7sFjQ@mail.gmail.com>
Message-ID: <CAD=FV=XfxT+GB=WvuGm68SaUWhSg7vS5AjQ-sv9e5wdKN7sFjQ@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_082350_305415_AC1687C9 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Lin Huang <hl@rock-chips.com>,
 Derek Basehore <dbasehore@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 Huang Jiachai <hjc@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "nickey.yang \(nickey.yang@rock-chips.com\)" <nickey.yang@rock-chips.com>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 wzz <wzz@rock-chips.com>, Guenter Roeck <groeck@chromium.org>,
 Caesar Wang <wxt@rock-chips.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Jun 3, 2019 at 8:22 AM Doug Anderson <dianders@chromium.org> wrote:
> > Can someone in Rockchip try to find the root-cause of the issue? Keeping the
> > PHY off shouldn't increase power draw.
>
> It sounded like Chris already answered this, though?  Basically things

Doh!  Don't know why I said Chris when it was clearly Caesar that
answered.  Sorry Caesar!

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
