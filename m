Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11E1FBDAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 02:52:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHskH1JbzU4Q8s8qKALwD25vEYGNFWJ4wGB0Adaj0RA=; b=Cvhd+5Z1TQmLk8
	+gKHQcibTa4zeAcvOVhxNCeTOoltaOdFpKXf+lacHsLfj+wOjkEHEsjlc+ThC5w7aooaPXGkFwbmn
	LjlVqTYAubEgM1jkop745Y4SaOjvFfxtQ+RnxiIGI2OLroMjcXdyhVMHAsuJq932GwAd9oX+6iw+J
	1ERF1HOfXjQdcABHWc5N3ecxrsEdeW355R+OrjCwCKzl2ubj8cQhj7b65SszNgrOa3X9XIkufqibd
	uTx4HzuKq0bBMHPtc8Ef6O6bGB+Uf3oPqtaoh1OEbDfhspS/lIorDB7TWFuLE/v1IV4ZjxzJMR648
	oqWwjCtun0iQ9TtxGhIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV4JI-0005A0-2m; Thu, 14 Nov 2019 01:52:36 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV4J6-00058d-5s; Thu, 14 Nov 2019 01:52:25 +0000
Received: by mail-oi1-f193.google.com with SMTP id a14so3798193oid.5;
 Wed, 13 Nov 2019 17:52:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mzR6nG67pn8IlqJFDhdjYxot9QbuFGZP+Pet1HLMx08=;
 b=gQGHnb80dZi1ar/bIBWxkcbNzzu3phbsfC/7DzAvAdB2x6/yFT0Jna01wqyWzRYCc8
 qG8tQ49oLPW0F45RI34XiTh8u++sv9xWSvpkNk/wHBam8I9rA9rXsDVSE6HnO6ttaCPn
 59qZIZ0ecf4CUvItLAuRjTCal4dEe97ynh1h+1cfHq6tce/jwMwj0hCNYJKZIX9LeMPA
 KwI+SR38c2nXcuzSJNocG+6wS/rVSXyAsazYGLObaiHEs9ykzNVJGWXaX3IfPQoWVFGS
 awp+sJ1P/hRpMnfnaRlImUSe8jMIsn+fcK7W7kyr8YXkO34sxnXwqG193m+DCIWGPsTn
 vhzA==
X-Gm-Message-State: APjAAAWcbS2wbX5xSDfNqz26tN6Vk4I2mpioYhDXjiOEB1tcEEh3FwhP
 MqkH74a0dZlDR9Am9l+z2g==
X-Google-Smtp-Source: APXvYqy1LyXkt7WGiuHxADhPr836dQgZX6Iact41M6WrKpL8aIdlSK3MOwv9B1/LdhtB661imE7fmQ==
X-Received: by 2002:a05:6808:103:: with SMTP id
 b3mr1326000oie.38.1573696343304; 
 Wed, 13 Nov 2019 17:52:23 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e93sm1380668otb.60.2019.11.13.17.52.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 17:52:22 -0800 (PST)
Date: Wed, 13 Nov 2019 19:52:22 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: Re: [PATCH v2 4/5] dt-bindings: display: rockchip-dsi: add px30
 compatible
Message-ID: <20191114015222.GA22800@bogus>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
 <20191108000253.8560-5-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108000253.8560-5-heiko.stuebner@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_175224_226910_A9D6D3AF 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 heiko@sntech.de, narmstrong@baylibre.com, linux-kernel@vger.kernel.org,
 jonas@kwiboo.se, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 philippe.cornu@st.com, yannick.fertre@st.com, a.hajda@samsung.com,
 robh+dt@kernel.org, Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  8 Nov 2019 01:02:52 +0100, Heiko Stuebner wrote:
> The px30 SoC also uses a dw-mipi-dsi controller, so add the
> compatible value for it.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt      | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
