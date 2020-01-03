Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCCD12F9D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 16:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOYnnGC2H82P8/ELezr+Xz4Hz7Q9WzPmgk5BuI2bhxM=; b=QVKUe5jAkhz5M0
	iFXIy6nmyY5a1iCZISYb860AoifkGoNp2EHKJ/CKgreqiPixX13qfgc7AUCJeH+96Pk31U4aEQD9s
	UfrT8QuOVxwGkkal+v49mvBjTXX1JTv+vfHmQ+Qp7vKoCXjSUVeCKdXAg4rtnrvMunDNuWIvOvy2u
	NmyNg1lLp6O2x+h9Ksf1ua6EyYskGkez0uUJk65KRkXuIaXLZlJxao9uJqwmC/NsFSR6a8a9U+Kyn
	16xmco0G6CqcjBYX92WbJjtTediQdJmU9Fk+jpqFK1YzsgEseZ0iAl6ipLLP3B3sc25cTBRaU93Oz
	OK5xg4x/V2ZkvcJrdxvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inOv9-0007NN-V1; Fri, 03 Jan 2020 15:31:27 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inOv1-0007MD-GJ
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 15:31:20 +0000
Received: by mail-ed1-f65.google.com with SMTP id l8so41906978edw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 07:31:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RkLCz5in5T2g3YDNyQdgyTRFUwUtav+QzKtl9FKJNLY=;
 b=Bg7DTyx21mx5Pom9ikIEjdKx6VCzmLFxfvFUCX4LoxVo/970g8bZNKo8JihjiJda8M
 GV43XkCDrHqg47jf8VH8LSgMKt2Fasuz5AHyG7E0dtmG6j21ogkw09jC4yW6M+JLkGHd
 XDtVkDWTnUEoQo3ElYaxxO0PINCNZXVH8WurOZ+YLCcWZpbwz0k0/z9IdeBut/09GpWs
 MclOBhwZRmQnHTIGQTmqHqSeus5A35hDUYak8SFgCiuRCARIDU8rUb/wwdsq1znZt01E
 +qHk74q1qIpesXsrNTJPcOglV3ckVeEPabP2Wb7DSJub62mPw9THvAPLgQHe18dUH/8b
 QuIw==
X-Gm-Message-State: APjAAAUWL4AUZE3Z4WQOgegcxFXaTkIMbW5GStVH3OufIvh66PAEwc26
 4ZUwEwXA/iwvqzdix9q3FnAr5ED3UK8=
X-Google-Smtp-Source: APXvYqylLEaoDIMBu1b3st+FXeH+sgOHmizgFvXyMfVYT4sgtLL9JrjkdF75qitA5J0+NXRKwmk8cw==
X-Received: by 2002:a17:906:b208:: with SMTP id
 p8mr56797419ejz.191.1578065477202; 
 Fri, 03 Jan 2020 07:31:17 -0800 (PST)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id k11sm7155235edr.38.2020.01.03.07.31.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Jan 2020 07:31:17 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id c14so42776618wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 07:31:16 -0800 (PST)
X-Received: by 2002:adf:ef4e:: with SMTP id c14mr90003435wrp.142.1578065476585; 
 Fri, 03 Jan 2020 07:31:16 -0800 (PST)
MIME-Version: 1.0
References: <20200103152801.47254-1-maxime@cerno.tech>
 <20200103152801.47254-4-maxime@cerno.tech>
In-Reply-To: <20200103152801.47254-4-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 3 Jan 2020 23:31:05 +0800
X-Gmail-Original-Message-ID: <CAGb2v65S32hbbKHRu1W+p7eP3-_uC1qKKGSP+ftkzxEO1egnjA@mail.gmail.com>
Message-ID: <CAGb2v65S32hbbKHRu1W+p7eP3-_uC1qKKGSP+ftkzxEO1egnjA@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] ARM: dts: sunxi: Add missing LVDS resets and clocks
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_073119_537048_6E0AC628 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 11:28 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Some old SoCs, while supporting LVDS, don't list the LVDS clocks and reset
> lines. Let's add them when relevant.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
