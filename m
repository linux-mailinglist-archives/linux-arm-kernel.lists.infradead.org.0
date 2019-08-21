Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D661F98663
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 23:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKMH9ZF7xveTYa8cM74usmQ+V2TDR3EieVLY9ELfx9Q=; b=cEjMfUtLSh+CKx
	pJAe/1uRur27d4LS1ELTUA3WX7Jh/DXR9AzRerqi0Ij+4G1w8flhEq8zpRN6pZh2D9ghoJjLShRJD
	Tg8nTLWJ6Y7UfVdHWmCVqhLMG3K2H6Tb844mFlfKfSOh6xDw4O71q0sDtQdATbrL6WqOU7n98nrYa
	cZw9Qr7Jy5H1oVYCpcno/RvCM/GuJow3b2LvTiIvbUKmWJYGuMj3k3c/CebPC3ZDxeaEFeBch/cLw
	Ohgl/JJXCRDHMA9bm4495fwi9BwOFiRpUz+TRAzgUtXpja2YGIZnMksvXXuO2Kmz9dHy795gj6X0D
	5aPGbFES0sFqHTWIeqMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Xy1-00005s-Eg; Wed, 21 Aug 2019 21:16:29 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Xxs-0008VV-9e; Wed, 21 Aug 2019 21:16:21 +0000
Received: by mail-ot1-x342.google.com with SMTP id g17so3472084otl.2;
 Wed, 21 Aug 2019 14:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wy67vtg4FuvAzi/1thnqtWwMGxJc2ol+TXZYnC2Wttg=;
 b=a2O1vB4Y49uXu/YYItvHjbx8LCiQcbyjAm/Rg+tNrA6uUwgqAM9CrmD4bSpBTTXuDu
 iSVsIo3yV2zalMhVpg9kgCyEPYK9YhA9aSaPjW2nULXZ8gnIEpLuFCFRV6DnHVyMgB7N
 CLDGK1jWYIuNGZEZXxLX244J9cI87vERUmjzloXmJ5PYEFEBp2TqVwKhqTBTVaM0iMIx
 VHQfjQ3Nj2cSMbkUWJTjC7FiB2GOjEU2DflOay1t+D2GA2j/uFkQqJCtfLVcBM+nA7DO
 /zwm4uPilpepuw83s8MkJyOWrjme1iNahWs/lJj8AaaZTiqXgsPnaJ2P/flNZ884VbAB
 0jkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wy67vtg4FuvAzi/1thnqtWwMGxJc2ol+TXZYnC2Wttg=;
 b=e44mOTh99sYjpYDOLV5hSL9at5OCbmtw0h72dShIWXqasGOCOjXMM1ztAuHZGE1ZNw
 MpWphk/FSEBZS3Gbqfq/Rgn18S34+Y+llp0Tdec5b+jmliL2o7eyxNo0y9SoiYn/EG5K
 7JxjUjH7DvaiPkioPutqMgfPq/61KmHohWsjRctzJkDwHdTL3SOEc3QDOdEL0epxpuPw
 KzpRXYptwcaJBYXJYoGL6S/wsFdQqTTh5sIAzBrlxSO/hVZe5buA902JN/Ks9qy6BQwl
 f2XAVfY/9hIO+jyYnQaSriH+nu1c6wYGeFRlPzwVJwVsr8MX006ICFZ787rLpzC0TQFA
 Je6A==
X-Gm-Message-State: APjAAAXH7U30/Yu/ivehYoEp6WhCeeV4HNGLNM7MKDKHHOgVUivMZNwd
 qU5qzNiHSDf2pKg+eN24vsguGgpdxIlTUQp21vI=
X-Google-Smtp-Source: APXvYqytlWgxY8yGmmM2cDJEDZWBH8EhWi4sU/WAkNbOda8BuOcH06CPK1GZ26evpCKulTW/urt+yxS8POSbZvKXF4s=
X-Received: by 2002:a9d:1d5:: with SMTP id e79mr27849218ote.98.1566422179039; 
 Wed, 21 Aug 2019 14:16:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190821142043.14649-1-narmstrong@baylibre.com>
 <20190821142043.14649-9-narmstrong@baylibre.com>
In-Reply-To: <20190821142043.14649-9-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 21 Aug 2019 23:16:08 +0200
Message-ID: <CAFBinCDd7fnUxysHFK7DTSRwYOO788TRPtB=CSHRkGVSXW6xSg@mail.gmail.com>
Subject: Re: [PATCH v2 08/14] arm64: dts: meson-gxl: fix internal phy
 compatible
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_141620_339281_59828BF4 
X-CRM114-Status: UNSURE (   8.09  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 4:23 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This fixes the following DT schemas check errors:
> meson-gxl-s805x-libretech-ac.dt.yaml: ethernet-phy@8: compatible: ['ethernet-phy-id0181.4400', 'ethernet-phy-ieee802.3-c22'] is not valid under any of the given schemas
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
based on the explanation in v1 we can program any arbitrary PHY ID so
Jerome's argument to list the PHY ID here applies
with that:
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
