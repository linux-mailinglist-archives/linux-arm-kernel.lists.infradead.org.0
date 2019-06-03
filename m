Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4407433B34
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 00:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYSMsBAN2Syiu0Ouo++Dhu/vH5ZppqTPVbeI9yo2yks=; b=WSaDv0L88n4K2q
	VzUJoKoHPejNnW3QhpZuU+EEKuCFT+zKbFP2XsfBLMp8rhyQIlvN4oMZ6tWGEmNx6VeRBzckf11nX
	t/DbzcibCN19ltV7KPwZK55l8zdkTmvYforZZVdAbaxCxDrmC6rpkd9dAztTTJwvq3HfAZYT9H3X3
	Il/cjOOufEpTwJC2ChrV4vahUVWs+f7LRJelgUahC9Hz1wsZ96itFQVoQno2J5bfEh3foYql9zDT3
	Q3MXUTJTYbixqmXsDLyYwqT9qL2htS/NN6d8uasBVWJkwkEk7U3rgMkrIGvqjQqQuhoTxdRXMjntU
	H99UecJXHcM3RD3GVdOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvQa-00042X-L7; Mon, 03 Jun 2019 22:27:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvQT-00041O-83
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 22:27:34 +0000
Received: by mail-pg1-x544.google.com with SMTP id a3so1684744pgb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 15:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=E6ho1ZxlV0Xih2i0RKDw0kTDY5g9DdMwFcOCpRpL+7c=;
 b=fTB1vRcswc/BiwKh12U469X9crlhodyYYQFkPeD6d/eTl9gac4t6MbzYHc6I77Zpby
 32Gc1ts7Xt3yXF2sBJXH4ag+ZMlzs36IMlp4xkNLZOusP+eiCkRIPGWggFLFW5dG7UE0
 HTKhtzIBIsmunH2SB0mMD4mug/y5h2QGP0WSdOmyDkPIH48H9iNb565F5sPo2cnYANpk
 QGs2LgJF6tWq+h54z2L0F9XcLb8HccoiukLgzys9m76cw7PImSgGkI5VOlgTiCA9HISm
 Wd54DU6gMnQwNHnuUoyS7SXBcPJKdYE4RM6fgsoaYDPSybiLUdP8mOYE2s98upqrPtjf
 QDww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=E6ho1ZxlV0Xih2i0RKDw0kTDY5g9DdMwFcOCpRpL+7c=;
 b=dMPdHvkh08OcAA/SKTkjTFdx0bYlYO9SjxtaWw5aOguHPM5Zr2OP9hRofP8NZVPhuq
 q8GisQ4zirBqVl2tdEzRgX85kPeeC8D3DxIpKZF42vkjqb00VukNdqZgSveNyUDNcLBB
 RIOoEWfsZhoYSAWjsPw8zxl98OctlHf8mqNGgaQz8FpdAQnd+Tukya/5sxMMzohusTo/
 sMb3549EhWNg6vUdIxkuEuQ8fRMETcEsKz8zf/5z1dR7WJbfi0GYXUlrdizLsB/wL7SC
 E/ybYezBvw5ieXTt1wTEdsLxazx0aZLQ322T1YTAVjInrJvPLO2N+Ot4pNBBYYUpiK7M
 MmrQ==
X-Gm-Message-State: APjAAAVgpgseYZ6HO0LAPM7VLtr7pbxsOhDkxCcZ5x9CKjTrWiWhZXHo
 FaTw/MyMsJsTJ7Q9udcVtkARjA==
X-Google-Smtp-Source: APXvYqx707HxXF81Wy5xSp5ixyEwaBT8ijV8VlyNBX3DNj3zhlyhGQN3d7WIYt0NBWk9dtoIqY278g==
X-Received: by 2002:aa7:90ce:: with SMTP id k14mr34462634pfk.239.1559600852507; 
 Mon, 03 Jun 2019 15:27:32 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id b90sm895560pjc.0.2019.06.03.15.27.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 15:27:32 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 01/10] ARM: dts: meson: update with SPDX Licence
 identifier
In-Reply-To: <20190527133857.30108-2-narmstrong@baylibre.com>
References: <20190527133857.30108-1-narmstrong@baylibre.com>
 <20190527133857.30108-2-narmstrong@baylibre.com>
Date: Mon, 03 Jun 2019 15:27:31 -0700
Message-ID: <7hftoqi9t8.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_152733_284198_5B5597A3 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> While the text specifies "of the GPL or the X11 license" the actual
> license text matches the MIT license as specified at [0]
>
> [0] https://spdx.org/licenses/MIT.html
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Queued for v5.3 with Martin's tags (branch: v5.3/dt)

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
