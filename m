Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F940A71AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 19:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUlqmhXKFTLe5lZrgqSqKIyI29HbhWHJjWWt07Bvpwo=; b=X0WtnCGFJlwc+w
	SGS9mZ8DUqXju1m+0avhAIIxOCLO9XWoB2s99cGTtvnGLN5bWaYk0HfYg7EGs4i6xayscFomGofP1
	2thDcrgWRYud0pk8xdoVghE65Y2Wq6kYoPh7A2GAsrcpCUtyprRP7ioqExc2C6L7zh2f7wPtQ/sXT
	CJglvo8l/gNfGwKrFqc6sJMIXun5ESK5drA9xMaZxxMqqRc5Y6j7Huei4V7OJAaeLbdB0BxW87Gnz
	FdTWzozovQyDp+cBnsFKik7rAGB6QYfxcuQewPpCNCIj6W2H4zT7pH4mpgnwIuqjhtm1tBawX3JdT
	4WgThPnrWJ71H+hdqFWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5CcA-0008GP-26; Tue, 03 Sep 2019 17:29:10 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Cbx-0008Fw-3X; Tue, 03 Sep 2019 17:28:58 +0000
Received: by mail-wm1-f67.google.com with SMTP id q19so362890wmc.3;
 Tue, 03 Sep 2019 10:28:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=w+K4u8odsUFPax+hx2zddlYzhjzmD0FICwYsOGh0olA=;
 b=p9TZdL22FLjCjiL2HPaa1Nc9sWBmrqp3XqNWR5Bn7YX50y6g945uouTfk72qSpZWcK
 FtnAhhgCTySrzuJc7m4E2ag/Ia915sKUQQXMq40TNjnkBJyEX4U5OPHNoHqjhyJndKso
 q+7vdCQoFIxJi8jsGhPujekHq0JE1T/5PXnOM/HKjlfjSciZjA2O8+V97MhYPqAQgB/c
 8HQUmFMpimj9yk0Aig3epGQP5MeIkkIw/Yb+d+GVHKKoZCRAyyagwGUPcOCzZjUFpEvG
 3uq5higjiwi1MhL6J4SPbO0TXQs164toS7JCsxxmR2Kouj9CSKs0iO0x6VJDIiCRohlQ
 +iAA==
X-Gm-Message-State: APjAAAX2E43s5PgB22L8pEkRE5GKo9AIEDSIz7FX7kFSwAAWI8sanuxp
 qYIDv+jBneD5zu8d8ByDcA==
X-Google-Smtp-Source: APXvYqwPuaDBS6n+RBokvyyYviJLgi2039CDrIzaeWlaVrymSkQw9o6arf548BTNUXBQu9FsTGLNgQ==
X-Received: by 2002:a1c:4b14:: with SMTP id y20mr548705wma.10.1567531735329;
 Tue, 03 Sep 2019 10:28:55 -0700 (PDT)
Received: from localhost ([176.12.107.132])
 by smtp.gmail.com with ESMTPSA id u17sm19865544wru.25.2019.09.03.10.28.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 10:28:54 -0700 (PDT)
Date: Tue, 3 Sep 2019 18:28:53 +0100
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next v3 2/3] dt-bindings: net: dsa: mt7530: Add
 support for port 5
Message-ID: <20190903172853.GA14176@bogus>
References: <20190902130226.26845-1-opensource@vdorst.com>
 <20190902130226.26845-3-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902130226.26845-3-opensource@vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_102857_149190_7484A14D 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mips@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Sep 2019 15:02:25 +0200, =3D?UTF-8?q?Ren=3DC3=3DA9=3D20van=3D20D=
orst?=3D wrote:
> MT7530 port 5 has many modes/configurations.
> Update the documentation how to use port 5.
> =

> Signed-off-by: Ren=E9 van Dorst <opensource@vdorst.com>
> Cc: devicetree@vger.kernel.org
> Cc: Rob Herring <robh@kernel.org>
> ---
> v2->v3:
> * Remove 'status =3D "okay";' lines, suggested by Rob Herring
> v1->v2:
> * Adding extra note about RGMII2 and gpio use.
> rfc->v1:
> * No change
> =

>  .../devicetree/bindings/net/dsa/mt7530.txt    | 214 ++++++++++++++++++
>  1 file changed, 214 insertions(+)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
