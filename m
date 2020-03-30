Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FA9197B41
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UG1ku73p5J28KClzrs4+AE+git/t1e3ebdCsejx1rtI=; b=GChBiVxnJ6hXe7
	S0+azaEBvt0QmGx6tSqH3Mh57VWCKflLBdtq5T2JjYqPdHA0lsruu0gfqG3VD4puHCG6qyfYo2dFe
	ax0QuROCQpb185pRc6ZKZiabpu2jGXRtOJEdClfDSuSJyqZnqPPC40VGXALFmcC0JdAn7moeNutZZ
	bYd4SZjfgskVSu3erWyXAEozj9fKIXAGehjk4tIMi6jSsMr7EJf0rTvHiaeN5vKQoAtLOJ5bu4gGF
	U7yTGXJCK0uEirRO35mTYOt2wgZmJ74ee6OGxN7DqUiKrgLDLWD38sIAoXQWWi7X/+ubn9TIf8sHM
	92VaLtlK0rMFkvbR0btQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsxt-0001Fg-B8; Mon, 30 Mar 2020 11:52:25 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsxf-0001Em-FH; Mon, 30 Mar 2020 11:52:12 +0000
Received: by mail-lf1-x143.google.com with SMTP id c5so13897437lfp.5;
 Mon, 30 Mar 2020 04:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oUxAOgz8NXHq1Pf5is4saO0kcIUnQRpCo7D1rQX9etA=;
 b=RvTFD7FfX+RF2ea4gaF0j0B2FI534aB0tSVvis0sLeVy4mJcjjSl4QzkrKQxQrs/Lc
 HnSvgz2uPVhL0YBxzkToXX0ETdvrkXkTatxWl5GYZ3Et+xaXK4x9aPAdTDpdFdBHu3LF
 PMXP9o1RYCtkWmFsczRDmvIF/BzwpyQjLk2sSc3ltABf097AdbHhRrcgijhcCicFh6aR
 T0JGsIhIFKx7DyT2mBRoaK6iaHLQKAK+gC/Vv15Z5kpoiAku3KSocHewLR2j8Fd3QtvF
 t0OOgv/I94yviCfCMx7/4Wv5e9qp/KbKw9qXFzvEADHzUn0Nfjrt2u4S0sjQoIEyB6Mz
 8r8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oUxAOgz8NXHq1Pf5is4saO0kcIUnQRpCo7D1rQX9etA=;
 b=fDHmZqfXoCNrammWceT2s9jC9doxOwP+044Iy3NuwanBU3nGS5fYIAfwtfBjo5AfCe
 qRPrz6r5acDqqtqxQmlgzhx6qEnidCq/st5Jjubh3LQ7b2eAfzxOo3AL+H/rsXAXUuNA
 lbyVFo51SqUjMe2yrCTp3Jx6TK7q0hrpRkApWobG2pL3885aBrlhnmzUsFGfK/OKRodj
 iGsORq5xZxHzYganXYuO8nuEiLfnnEtr+5yadiKSp6w4WQR25aK4NW/eO6Iy2pi13dZN
 HC3f32RmQ4Tjet39QvI5IkZiQ1cDZBqWDBX/P1S/252mf32lsC7HhsEkffcdJ548FrUr
 BpuA==
X-Gm-Message-State: AGi0PubMKLnH5Wa28F3JkX+464uajViVoebfxAQcevk5ztayhTwE1244
 CYwuu/VJRPLF+VVK9HOEeEk6qUrAh1VCeem6HVeagrfFXBA=
X-Google-Smtp-Source: APiQypIs6reaMQbUKLAdY3KvxuAlR9R0M+IDM0rH838tBggLkO5g/vojQtpptaZ+TdidZCUDxI0stG9ysPseXJpdgfM=
X-Received: by 2002:a19:4cc3:: with SMTP id z186mr7582516lfa.69.1585569129458; 
 Mon, 30 Mar 2020 04:52:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-6-adrian.ratiu@collabora.com>
In-Reply-To: <20200330113542.181752-6-adrian.ratiu@collabora.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 30 Mar 2020 08:52:00 -0300
Message-ID: <CAOMZO5CKr7hSUFtb9b05rpRtpp9mb9ZyeSVqqiDXvppHJEWu5w@mail.gmail.com>
Subject: Re: [PATCH v5 5/5] dt-bindings: display: add i.MX6 MIPI DSI host
 controller doc
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_045211_521601_4EC9D13D 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Jonas Karlman <jonas@kwiboo.se>, Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Andrzej Hajda <a.hajda@samsung.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 8:35 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:

> +        panel@0 {
> +            compatible = "sharp,ls032b3sx01";
> +            reg = <0>;
> +            reset-gpios = <&gpio6 8 GPIO_ACTIVE_LOW>;
> +            ports {
> +                port@0 {

There is a unit address here without a corresponding reg property.
This gives warning with 'make dt_binding_check'

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
