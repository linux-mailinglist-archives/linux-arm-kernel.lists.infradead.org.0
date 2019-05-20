Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DC323F7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCDbfSWXVGaXkBOEJjU0COXvntIt6J0ypOImDzpcFTc=; b=FBq8bDr6UGcAN+
	e38K/Dp/fIjlshVh9/gISLPKZzBDXcnDmjbeWx8c42lMKDAXchGsBpyxikxC75uPXl/GQewTPCDn3
	xSAIYs0UCXKcpSwAK7agWeVaC2+NeUwJUEXIkydWoXQHlsSb5RqFhOAYfSHBB//Tt9azlBtUHafsh
	3R0nVg0NGXANe2aNG80AAPdnqwoTSzYZ53EGdHdrIv9SjwVY3nT+NE29Lj5Ke1G7FhQn7pXkav932
	sq4F0aQMAyxAKjIaV9iSXd51zg1Kr5pV2mMZDHkbu/Fr7vRKwhBxP+bn+Q7Zf5aB93v2v307Y/NeG
	nR7Tq8/oWnWCucg7Y59Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmSs-0005Yd-8H; Mon, 20 May 2019 17:52:46 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmSk-0005Xc-0H; Mon, 20 May 2019 17:52:39 +0000
Received: by mail-ot1-x342.google.com with SMTP id 66so13849757otq.0;
 Mon, 20 May 2019 10:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZCYkZ5M+DBQgIFJKIayxK6zD6QbZvJ7bD4zbXBwyRpg=;
 b=Y0ZsEHVpoxgSUFIfwTB7pzDHjHGpHMDMbyua0ENJz7KIRBOcTnPfVSz6MQym1RT50/
 q/69sL2xw4KTqicatOgiKfefuy2ZJm1MrpGBnIzItm8RFVtj0kvioVcudPjdOLNKLCPL
 8zCUimTU+hEALkirtzA3R3/6MvIUnrx5GXSBgmfJzMIWa2kcs0ZrUXIojX18lGHzQBhD
 qlJEatnohUpRB+vUpQxCpNo/CeYotKqN3Y/NeKqK2fzu/cb4IRO9/7ZJkqPWAWHkHvJp
 KIoHB0rqpm81BATx4rjRTn/n0RMoNSG6ujfYgcXJwMQrAX0+gkuXJ+k5L0MNhgUgYaDn
 7N6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZCYkZ5M+DBQgIFJKIayxK6zD6QbZvJ7bD4zbXBwyRpg=;
 b=hTnxRmdqaXpMJC2MEyV8E1tS0/xq3ECBsFXLBNQbA7egYuA5v/zetUKe1x5kEjYvx6
 +yUtIQiKgrEE/L9irDVm68Kckpesdo++VlTEeaROc4vkx7CN9O55BaXSQ/mjkMopiUgF
 7rTbK9lDQyv2YepHY8lz6gp9SS8MQAApMG7fVG9vU4cjp8Uh4dplGG97D3Gd2uFG2mn8
 9hx3RhG+OCDcPSGY6HX/uZf8AkR+3HaGrSw/Yn4j6zurCCJmETomquyfuq3IBxcjAP7m
 cY2KsdQ9vaoUUwcif82ziPYZBXWYTYPV6obZ/ulRRB4Ev1eGmwE+bCqE0E1tE/+f3iDo
 INkw==
X-Gm-Message-State: APjAAAWqYkPIasMxUmLOEW6W5V4x7Ong/UvMb/Hvmr6ve1oGxZ2+NhhC
 nuWg7/M3RjcbbJ1zYJGN7DkNW/IPpxC8WTRR4gynuqkla9Y=
X-Google-Smtp-Source: APXvYqyldFSFE6fn2yQPf1T1K5Er6qeZRNRO8KFH313crHAJiQ1EFivfC1Dboq6ILQFWTm5vdRbbR+xOAqmaN/myM5A=
X-Received: by 2002:a9d:2f08:: with SMTP id h8mr45229266otb.42.1558374757110; 
 Mon, 20 May 2019 10:52:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190520134817.25435-1-narmstrong@baylibre.com>
 <20190520134817.25435-3-narmstrong@baylibre.com>
In-Reply-To: <20190520134817.25435-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 19:52:26 +0200
Message-ID: <CAFBinCBmgTdZBDd5D_rCVQwO4UcJpXjX=Rc+0qgADF9sW-wFWQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: meson: g12a: add drive strength for eth
 pins
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105238_048764_CEBEEB44 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 3:48 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> With the X96 Max board using an external Gigabit Ethernet PHY,
> add the same driver strength to the Ethernet pins as the vendor
> tree.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Amlogic's vendor kernel (from buildroot-openlinux-A113-201901) does the same so:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
