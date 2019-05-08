Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7485B1764E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3yVpBvZcPt9tIMvCtU9XQNITHz5x81JrcipfRwM1LNw=; b=S6Nmbd523O9OoS
	3sJKZ6pOvQVHz7CJw4sttqOdcP9JfRxd4jDFbkprwxjX4png6slfjRn6lUGx91uMrjFQD4urvKktL
	J8pQNgfWQW/16t6wTLV48uSnMLYi+DDjwArPr/5UV1rEkgqGN42U8UzTvRt1PiakZ94QcVucfHZz1
	AeY55xDEVo/aqTcd8etqMfyXRS/yB/IGYMEy8faWQQBATJVX7FHFovJIvMUH1mviCR5pFrNgJN1ID
	2dWKJ8JXIo/4b2z1wEpC5TOno9oVNMVF3leN4Hx0BSCp2uGYMhg/ZZIoK0iJDtf8aGn5bUBTwwVl7
	rUbDIK2cpDojrHrrH1FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKBl-0000zz-JM; Wed, 08 May 2019 10:52:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKBd-0000zd-Hw
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:52:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id y5so2655778wma.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 03:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=DoWEPa4D0OSvUEE47Yf9/XCh/YlhwJezOh6SvUkD/So=;
 b=u+Ul5cwr0LHrvRJAV8/UQGYNtmubpCurdF0qaFRziyaHRzUGD6Y/L0UlfSkj+vxy+j
 zn7dF41uHi61sPTf/01CP49pUeP9CcJHr8S1mnHGmwaG8+7akA4E9w3K/gldUhi9e0sz
 eY3qKDrJrnI3XCep2e5GdaRz9C/G2WGz4nOpsSuzt+24jxj59yNLVrfE6Ag8+mhkKfu0
 E4HNTqt7IbqI5Cj0E/OxZMxQnfdDxco7L3KvEoxZJX/NmOXFc4yk+rthsRpw50DmiFwK
 LXCiOrlPrOvofI70WPvNgOOgZX7p5IUEYA3aeTsVUayLC9XFFEkp1hPrdMG8yYthKRdV
 Gg5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=DoWEPa4D0OSvUEE47Yf9/XCh/YlhwJezOh6SvUkD/So=;
 b=Wd2JJXBiJJlcS70hA/1vgdXzC8pL+y+nx5CMseEfhUYVeonY/DFhy0RN0/4V4eSi4r
 oJAxRjLhpLQ/AV0yhI5PcnYBvvP/CnqmLZrRW3EWVBL6LRWd70U75zjQbPDhwrm8ucDr
 5Ll5EVENZEvNCeVqpkKMuRh+ruVd+/sKtVI5NnlpzaQ+bU2YSoy7te8MRfSg5VShBzHy
 c2zSYlTAjpJcM66+zj3D0HqvssiXLhIehxlLtgj3TpiiAzWHNGvCn6xbz+F06A5lVUZI
 NHd6SCnvCPKg5jBglyh6ao9scMu72gJwWjd1Gjs634YA7MQh5uJSu5SkwhEQyXdx1C29
 Fvtw==
X-Gm-Message-State: APjAAAXypy2tx7WB3gjKGyfG9tqzPDH4gkPBCn5qVPnVnEVWNKgwO85O
 lbyLyA/rUM64HTi8cjfEB0peyg==
X-Google-Smtp-Source: APXvYqx8cs/kEeM8xskGvtE+5ioqNdy7RohTccspIxj99TLUIQ0478a8fiv4of2TD3GtPVekCIc/ZA==
X-Received: by 2002:a1c:9cd5:: with SMTP id f204mr2473691wme.145.1557312751725; 
 Wed, 08 May 2019 03:52:31 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id c139sm2333188wmd.26.2019.05.08.03.52.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 03:52:31 -0700 (PDT)
Date: Wed, 8 May 2019 11:52:29 +0100
From: Lee Jones <lee.jones@linaro.org>
To: "S.j. Wang" <shengjiu.wang@nxp.com>
Subject: Re: [PATCH] mfd: imx6sx: add MQS register definition for iomuxc gpr
Message-ID: <20190508105229.GO3995@dell>
References: <1556445161-29477-1-git-send-email-shengjiu.wang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556445161-29477-1-git-send-email-shengjiu.wang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_035233_603593_42214154 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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
Cc: Anson Huang <anson.huang@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyOCBBcHIgMjAxOSwgUy5qLiBXYW5nIHdyb3RlOgoKPiBBZGQgbWFjcm9zIHRvIGRl
ZmluZSBtYXNrcyBhbmQgYml0cyBmb3IgaW14NnN4IE1RUyByZWdpc3RlcnMKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBTaGVuZ2ppdSBXYW5nIDxzaGVuZ2ppdS53YW5nQG54cC5jb20+Cj4gLS0tCj4gIGlu
Y2x1ZGUvbGludXgvbWZkL3N5c2Nvbi9pbXg2cS1pb211eGMtZ3ByLmggfCA5ICsrKysrKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpBcHBsaWVkLCB0aGFua3MuCgotLSAK
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5h
cm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFy
bzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
