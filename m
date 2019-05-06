Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94635145A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tt+lBrfkxGz9jTeucVx0iNCCXVijgtRdCVL+GEtmam4=; b=msnhmW/JUFu9Rd
	Ga3tRCkrk7cF14yMMi58FsWK2vANO7x8940EyqZHgcYem6e0s7Hb2rE4MT4rWYkWglQR5etU12j1t
	3dv80VwSjAWAWOAZiZozy1nJMwq8HbxKsdXqmgcGm/UgsLDdoN+hq5KAS1A7tm8WTJyCQSPFEIPRE
	/LvPsi3XPEPfCBlhUsDKVBdEAnByrCZQXRgaIv28Zv92hvPtIMQCq0Nph2YIowrxBQxYEfX6pLLY+
	iJ0lsTBJDdRmMVIF2f3g+L/KWH2FuueK8XjEFvz78SmMHw0ESugwG7Qa6VnGVn447rlQWRcqLsnZ0
	rpCj23sgvHGhfrrQEjSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYXL-0003GU-55; Mon, 06 May 2019 07:59:47 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYXE-0003Fs-Fw; Mon, 06 May 2019 07:59:41 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id CB3E460DA8; Mon,  6 May 2019 07:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557129578;
 bh=NMarB24NYlqwYKYppR0+S1WNXUCddPdMFLRiI09z0ms=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=S9wBSr0a+TQBG7xwfbdOrrv1ahXoiDudhF6XkCXpTt/CW9pqbvjWbczmdmJNR0MYc
 2/kdA7onz3mXKfh302yaLeXlkLoadd0mBVlhFR31R7df8rrS/KzZ3SWKRPkQrlBzc7
 xx7pQXs+bEF84B2H5G/cwYWGPraloPEoHiQfWWA4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-65-53.rev.dnainternet.fi
 [37.136.65.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 81E6460770;
 Mon,  6 May 2019 07:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557129578;
 bh=NMarB24NYlqwYKYppR0+S1WNXUCddPdMFLRiI09z0ms=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=S9wBSr0a+TQBG7xwfbdOrrv1ahXoiDudhF6XkCXpTt/CW9pqbvjWbczmdmJNR0MYc
 2/kdA7onz3mXKfh302yaLeXlkLoadd0mBVlhFR31R7df8rrS/KzZ3SWKRPkQrlBzc7
 xx7pQXs+bEF84B2H5G/cwYWGPraloPEoHiQfWWA4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 81E6460770
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH v4 07/10] net: wireless: support of_get_mac_address new
 ERR_PTR error
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
 <1556893635-18549-8-git-send-email-ynezz@true.cz>
Date: Mon, 06 May 2019 10:59:29 +0300
In-Reply-To: <1556893635-18549-8-git-send-email-ynezz@true.cz> ("Petr
 \=\?utf-8\?Q\?\=C5\=A0tetiar\=22's\?\= message of "Fri,
 3 May 2019 16:27:12 +0200")
Message-ID: <878svkvwri.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_005940_558991_3854BC10 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Stanislaw Gruszka <sgruszka@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 QCA ath9k Development <ath9k-devel@qca.qualcomm.com>,
 Helmut Schaa <helmut.schaa@googlemail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 linux-mediatek@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JpdGVzOgoKPiBUaGVyZSB3YXMgTlZNRU0g
c3VwcG9ydCBhZGRlZCB0byBvZl9nZXRfbWFjX2FkZHJlc3MsIHNvIGl0IGNvdWxkIG5vdyByZXR1
cm4KPiBFUlJfUFRSIGVuY29kZWQgZXJyb3IgdmFsdWVzLCBzbyB3ZSBuZWVkIHRvIGFkanVzdCBh
bGwgY3VycmVudCB1c2VycyBvZgo+IG9mX2dldF9tYWNfYWRkcmVzcyB0byB0aGlzIG5ldyBmYWN0
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPiAtLS0K
Pgo+ICBDaGFuZ2VzIHNpbmNlIHYzOgo+Cj4gICAqIElTX0VSUl9PUl9OVUxMIC0+IElTX0VSUgo+
Cj4gIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGg5ay9pbml0LmMgICAgICAgICAgfCAyICst
Cj4gIGRyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvZWVwcm9tLmMgICAgfCAyICst
Cj4gIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3JhbGluay9ydDJ4MDAvcnQyeDAwZGV2LmMgfCAyICst
Cj4gIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKVmlh
IHdoaWNoIHRyZWUgaXMgdGhpcyBzdXBwb3NlZCB0byBnbz8gSW4gY2FzZSBzb21ldGhpbmcgZWxz
ZSB0aGFuIG15CndpcmVsZXNzLWRyaXZlcnMtbmV4dDoKCkFja2VkLWJ5OiBLYWxsZSBWYWxvIDxr
dmFsb0Bjb2RlYXVyb3JhLm9yZz4KCi0tIApLYWxsZSBWYWxvCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
