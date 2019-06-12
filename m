Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3949F41A84
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 04:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ww2B8eW8y30FB29CEvyHkuDj/ns/Cb1zG/hTjwgcsnQ=; b=BkF8nbhar3wTFkuLcT6cOQf1AB
	ua/0MQoHEALWz/Wgqm02j0cq7odPup0ydfZlm7yYjdHC7chbHEkU7vXCfJShhWKgHLeQ5MlUSXLuw
	WuFvMPbibWFqxA8vZQiDlIbRYQ5gICVoHjUcJ+rPb0odivTdwW00WKQNAeWav9Q4ghPnYCNTe86Tp
	9/2xfTTTVCHrSD/ITq6OCwwwIB+H8puHvK7kxIYq/UfrM1KmRoLd+BJ6M90B7aFg3US6u6mvgivKw
	SRdIJycLv9HPeJdSSwgiigBKtc1TK4gXc3p/aSuvOb77Vl6Mqn02oq/Nxgp+n3ZKPlN1MUjaQLPTM
	9ghEsfAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hatMd-0003ix-KB; Wed, 12 Jun 2019 02:51:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hatLh-00033m-91
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 02:50:54 +0000
Received: by mail-wr1-x443.google.com with SMTP id c2so15120213wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 19:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9GCwfGBCo9GGHUQUPOrhliAd4tGtS+7jY5eJuzZGzNM=;
 b=knxMurKPjcdF5RGOlwWS7n5Ve/6IpHY5t08Yk0/XupPoD179GmZGV9nW3QseGocy7k
 WjOnahRsDdXaPYWuUmjwTVVCLmSBj4N6YsppulZfCKrU3v+/MN9Bgx/2xKLzsHw8jpuu
 ouHMso6+FuQsw69ACWy3IAmOA9pmcFjM9osoZMNm1T0R/7rejPGUnkyMEhiw4Lg/rKmJ
 tbnlwGZO62N8lJ4Ng4UqvJc1L0Ze0JkmAr0Hmm3ejemO9sudd1/ydL1GlUTrLtNPp91Q
 qQzG4E9mxilQID4tg/DhgEliTYx+eIlF1WLXClGFEp0d/c6jwGCSqgHpjnrEfo8OxR/Q
 fY0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9GCwfGBCo9GGHUQUPOrhliAd4tGtS+7jY5eJuzZGzNM=;
 b=ZJm7Fjo9Jc7qlmxkJ6fUcZT0BNtZij71ms6JaKADXD8GxmGwDm4BNahFD89rJ7pwJ5
 v8izA6zHXN1Xx/I+ElLRlugz0+TR9302OqUxtvfwyz9jMLKUKgZJFFSUivGE998/cI5S
 1ylV+f35qOlHtiSgnEKUq4ucInzLmuhos9L8qBKYTxsHgdVGF1hCkeCpV0ZTt3i8aQOG
 9rhVs1GgHKFnWG7t1dBxyE0KOGPagrASx3/AXcIYmTGLdBL61nr1XBEhe4VHyKhSOGcU
 VuDPm+WGAytKRmYeVdi7934yK54b9XPRX9E8JDcuaBaVPQHbBmHOQLM5/wWys4uSEFV4
 /zIw==
X-Gm-Message-State: APjAAAXzk69N2ssGK045eu5/ZZByYJXyPZIY6aroiFTqZXjP0iarCx+e
 kDv9KqiwzJvPqKtaCvSVW1s=
X-Google-Smtp-Source: APXvYqwqOgGIG5NCiDuUagAF2O+zviQvSKp/KckIyzCoYWNj+S6dGLzYZvANn5OxG+ryALkRmGuGLA==
X-Received: by 2002:adf:fb8d:: with SMTP id a13mr15454814wrr.273.1560307851666; 
 Tue, 11 Jun 2019 19:50:51 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s10sm4374100wmf.8.2019.06.11.19.50.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 19:50:51 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 4/6] Broadcom maintainers changes for 5.3
Date: Tue, 11 Jun 2019 19:50:26 -0700
Message-Id: <20190612025028.13118-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612025028.13118-1-f.fainelli@gmail.com>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_195053_365027_449474A6 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/maintainers

for you to fetch changes up to 64f35709d5735ddbf8ab52d60ab3d62550b544d7:

  MAINTAINERS: BCM53573: Add internal Broadcom mailing list (2019-06-11 19:43:05 -0700)

----------------------------------------------------------------
This pull request contains MAINTAINERS file updates for Broadcom SoCs
entries for 5.3, please pull the following:

- Florian adds the Broadcom internal mailing-list which has a patchwork
  instance behind for the BCM2835 and BCM53573 SoCs entries

----------------------------------------------------------------
Florian Fainelli (2):
      MAINTAINERS: BCM2835: Add internal Broadcom mailing list
      MAINTAINERS: BCM53573: Add internal Broadcom mailing list

 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
