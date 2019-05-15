Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 018701F79D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 17:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wWI5JYn3MTH5JBQfaW5UAgo96LEAjOSR2RJSqjoUqw=; b=VbW34CUR3XTsZf
	Ej8WhROfO/+w02ar56rl+1CSUQeXmfG3Vz52hV8BucQUZ0gGmr7AH1PVbDpxEKlb1/NhoCQDEUAM3
	QqVDIsGwwV1fMLJtfgwZ/JkEoghgNKAMInEQ9G68rNCskianx9fVJ5exvGsg+oTHAYIXlXOyKJt6x
	ThRVi5wsHb/atHtMLi6GO27ntcIF7rLJ3KP0ybO+iyEVJYXkNJQWyFdoRo9uI/e2DU6WUZv0zIkwk
	BDHQWhq/W83qR0pKF/szheSjLkoUpNoMwxQcwv5/U8MGVQRbRYn0S/LmV7wqdhfbKrRJYOqPsWsP6
	bm8MshLm5+IoDrsDJYLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvsx-00089F-Bc; Wed, 15 May 2019 15:32:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvsX-0007mg-9k
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 15:31:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id z28so173680pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 08:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SQsgM6LD4OGmyb9zuec5UbAtvnTOoKL54DBY7H0uK1U=;
 b=daAtSqCJ/oTaEYkG59u3o7jjY8qmxpZRWzhLXKwEHrXH/u26lAXnoFPkn/uCG/Sl6k
 UwbWWhR3FdnriNAjE2O7MvVmW1YSlkjnNGHYNQZXSckOluh1bP7799pE5M5xRw+A+4aZ
 ZTEZR3k7vhKDR6vgJEFTaz+4TP7QaLtvPz+jk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SQsgM6LD4OGmyb9zuec5UbAtvnTOoKL54DBY7H0uK1U=;
 b=LK5yYynj4Z7B5+KT7gXbhr1p4p3YpY9eiFH+3F/x3QU5IL0Jpq0DCUGFIjwPleomux
 yF38EU5jh6wu5RcvyLXSFRVPQl9b/NQcM2wTL6wVCfIUK4tCyyDXsBBUynllmjsdpEUO
 L/LodginiqXt0V1lN/DnmYlBlrgysPf9sazLjuB6swFOXnk/gg3048GvcbY7vaJ+Dblp
 pMQhxmP6wNbyHW15+Cdh9reOSdED0Su3zxBcOUzgvHZ2KgyKbCz1XPVWpfOthkcNppQv
 EDr4kV73XIC7qGSyM/bdacutc0rv+Jv03mnCDzEyu2Ih7lwX+iUYFffhloOUeuUbETb9
 ibjQ==
X-Gm-Message-State: APjAAAWCeUayqTi0yIFgNdRsZi8FrJWIU29H/jTyAJcNSIcZdpgVVMQA
 luOXIJXGuxtAg5GZw0twTRKZAA==
X-Google-Smtp-Source: APXvYqxOUzLo/if+h9XIHzCEFeYe9LeIRDutH5jCNlO5xeuGnD6kyzTn/1KEjr7JOey3ewert2okdQ==
X-Received: by 2002:a62:164f:: with SMTP id 76mr48532016pfw.172.1557934296145; 
 Wed, 15 May 2019 08:31:36 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id e24sm3792704pgl.94.2019.05.15.08.31.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 08:31:35 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/2] ARM: dts: raise GPU trip point temperature for speedy to
 80 degC
Date: Wed, 15 May 2019 08:31:27 -0700
Message-Id: <20190515153127.24626-2-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190515153127.24626-1-mka@chromium.org>
References: <20190515153127.24626-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_083138_618250_CC883502 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmFpc2UgdGhlIHRlbXBlcmF0dXJlIG9mIHRoZSBHUFUgdGhlcm1hbCB0cmlwIHBvaW50IGZvciBz
cGVlZHkKdG8gODDCsEMuIFRoaXMgaXMgdGhlIHZhbHVlIHVzZWQgYnkgdGhlIGRvd25zdHJlYW0g
Q2hyb21lIE9TIDMuMTQKa2VybmVsLCB0aGUgJ29mZmljaWFsJyBrZXJuZWwgZm9yIHNwZWVkeS4K
ClNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgotLS0K
IGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cyB8IDQgKysrKwogMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12
ZXlyb24tc3BlZWR5LmR0cwppbmRleCAyYWM4NzQ4YTNhMGMuLjM5NGE5NjQ4ZmFlZSAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzCisrKyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cwpAQCAtNjQsNiArNjQsMTAg
QEAKIAl0ZW1wZXJhdHVyZSA9IDw3MDAwMD47CiB9OwogCismZ3B1X2FsZXJ0MCB7CisJdGVtcGVy
YXR1cmUgPSA8ODAwMDA+OworfTsKKwogJmVkcCB7CiAJL2RlbGV0ZS1wcm9wZXJ0eS9waW5jdHJs
LW5hbWVzOwogCS9kZWxldGUtcHJvcGVydHkvcGluY3RybC0wOwotLSAKMi4yMS4wLjEwMjAuZ2Yy
ODIwY2YwMWEtZ29vZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
