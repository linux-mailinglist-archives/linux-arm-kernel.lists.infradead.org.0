Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2189C5FB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 21:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjVOguFF6FfdSUl3qFIrK7soalZqzi/K24piWrMWhBw=; b=a7p13rFkqFODPD
	RJwKvdOQLoglZSHDWAFqLarzsSgejP5CJ1/9Pv/XvQ82Dhy8SwCU+ew3vOQwKVPzaCnTdpQjS/yFl
	rSqxRM+egV9pZSNwoK20lgbJvnbnmHI3Ir784jLY1EVGWV70XXpqH4ir336rqSt7zBwjr4LVGZaON
	EGp2NZlclzlDfpsh/zUDZU52fVyIKgUHAc4GkdMuldplEP5lUSYfRaNJkbxeGkjam0F/R4EB8WqAY
	kW2x3jARwlR5PM4S0uxhVZqvOO2mVMVgGquwv+8TVL3ayHZfuHpI+pqF/doBb22kbJ55oT68obwgi
	Ahl88GoL9bvY4So62/fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1yc1-0008IP-IM; Sun, 25 Aug 2019 19:55:41 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1ybn-0008Ge-8L; Sun, 25 Aug 2019 19:55:28 +0000
Received: by mail-ot1-x343.google.com with SMTP id b1so13308704otp.6;
 Sun, 25 Aug 2019 12:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kGmPx2xuPkputCeT387Wpalg1a3GB50jgvbEZF5SlNQ=;
 b=ZWgvPDk+e19f+KMo42AfleUbEhqmR1sbLN8un2pAZwnKo7R+VFoNu706wHkkepu0uj
 d/Q9lHk+J4OW9bqN0IAkEXFMzpQAr7rpurCXwxo59pu6SUYdLxN2zHRLq3pQGCTHHkYm
 4HnbVp8i7pIjGh9Xne1FL92bPb39lmbmnfBD6DhRM/6mWCUhl5DgB731UDJVNRLnIpbP
 QDhGbaHKI6HDe1YTMMIYqmN9aH27a+tuZv8rdpuwpULP8svXVorHyX6tV43FGyRJMtJl
 leWknAathV2ibsvyQgXz1FF9lfbszCiabYMdW5cnO1t7yG/L7PVtp29Hk4XfTg4YNk3l
 FrIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kGmPx2xuPkputCeT387Wpalg1a3GB50jgvbEZF5SlNQ=;
 b=S232lwgfhiKIJp5C4yvXhw+ZdTpn3LUqm3aGmiha1wuXuj54npAozmjJ8yUFSt5R5V
 SfwsXQs+4iWCDHt/XFjpJ+ul7pEp6hqLriSGp4WYuXCQMy9n2W1yG/RVN14J+wWnAWnh
 N+Xziown03DuyTzC1tYSS1wIZRY50P+x3AIGA5ZArbfJphpSNUlwcXaMrXPn1JC79WTJ
 NQCOyxxYwld5EsFWoh02MQvfToM5lLiSfvOS3Vj2pDOSjXE8rtgvduS7MAUE7QiRp2vQ
 W9d8enUXRoBeKlc7kBNxFLgZM6B4bWv7NQ+BqNRZvThBy7BMPXDHlb7BJyh4/T1IJM0S
 uZ7Q==
X-Gm-Message-State: APjAAAVWh6901cIGWuktevobMVaWY7E+Nv2eVuRdFlHftUjl1oFUV70l
 iJ4782PLWWqAlEHMhRsm1ffHK7jed7btakATZBA=
X-Google-Smtp-Source: APXvYqzzvtkVUjkecPWG03cxd1nVZTZf8ShZr+HnDL6BFQMZnJcYWHUOL3e4dOdG1vazH5JciiRHL10NvWwaLCvR9a4=
X-Received: by 2002:a9d:1d5:: with SMTP id e79mr12418370ote.98.1566762925225; 
 Sun, 25 Aug 2019 12:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190823081427.17228-1-narmstrong@baylibre.com>
 <20190823081427.17228-4-narmstrong@baylibre.com>
In-Reply-To: <20190823081427.17228-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 25 Aug 2019 21:55:14 +0200
Message-ID: <CAFBinCAH2LP2OyFEek290Prm9N=rxxAc-9gZ_jS0tY_4+utByA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: khadas-vim3: add support for the SM1
 based VIM3
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_125527_302149_76078D6B 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 10:15 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add the Amlogic SM1 based Khadas VIM3, sharing all the same features
> as the G12B based one, but:
> - a different DVFS support since only a single cluster is available
> - audio is still not available on SM1
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
schematics are not available yet but this looks sane so:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
