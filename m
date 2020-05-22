Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA82A1DE3C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 12:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RmfI6GGEkCvG5zOkUklgBckcyiaDSrf9Qe0UnSA3QY=; b=nQUR223vx7ZbvD
	G6JAXF0OHDypTYm16Sfga0dRxKhtkmVozwpJLsIdx6j7jHhMonZFaVyOGExK8CjMc5oHXaV5mOXsM
	C8WOhTnY6s94WJ9LWudKmH7+FMZ7iWc35K3v986GnqSZL7qMumrLwEdy6R/RKNvwdB3srBkwIBk+i
	gG4NQAIZtcKgGS61wsWdN2Qlx/5PwYb/ZnAfavEzUCQl2wRtp1U2XSlWGaFve4PIv5hQXZBGNUV0C
	IjCSHCsPnfJZ5xC5C0gpXWidiPjRTJZEd2KIUqMkJYczlw9DDy4D7T83cf/QNRqjABFmztg0vhzuW
	EIu5Vt953viu0g1iGa3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4ef-0001WG-JG; Fri, 22 May 2020 10:11:53 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4eP-0001UY-FA
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 10:11:43 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590142302; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=NW8Jsqkb6pnbBs1zr+nqGOErhbAaUKt/K4f9G+vJyjQ=;
 b=a+XHMtesmJmLxLqe8y6dNN8V8tUlIR1+gy3Ub3nMSv5bPJK1hwRsBFD1yHPKF+GfvVXLzO7A
 cgA7fTV0PHJ9ylLjJKhUhGx2ZahrLW/xfEoOOhCxvG1H5EIp85wGMfvgQJvA19B7FIpRZ3Y7
 EtGoSo3g8rj51nE6OwAUZuxXirA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 5ec7a54f569a62550d9406f0 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 22 May 2020 10:11:27
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D87CDC433CA; Fri, 22 May 2020 10:11:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DB89FC433C8;
 Fri, 22 May 2020 10:11:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DB89FC433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] mt76: mt7915: Fix build error
References: <20200522034533.61716-1-yuehaibing@huawei.com>
Date: Fri, 22 May 2020 13:11:16 +0300
In-Reply-To: <20200522034533.61716-1-yuehaibing@huawei.com>
 (yuehaibing@huawei.com's message of "Fri, 22 May 2020 11:45:33 +0800")
Message-ID: <87a720b7p7.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_031142_652366_693FCC79 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: ryder.lee@mediatek.com, linux-wireless@vger.kernel.org, yf.luo@mediatek.com,
 chih-min.chen@mediatek.com, linux-kernel@vger.kernel.org,
 matthias.bgg@gmail.com, yiwei.chung@mediatek.com,
 linux-mediatek@lists.infradead.org, netdev@vger.kernel.org,
 lorenzo.bianconi83@gmail.com, kuba@kernel.org, shayne.chen@mediatek.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org, nbd@nbd.name
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WXVlSGFpYmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29tPiB3cml0ZXM6Cgo+IEluIGZpbGUgaW5j
bHVkZWQgZnJvbSAuL2luY2x1ZGUvbGludXgvZmlybXdhcmUuaDo2OjAsCj4gICAgICAgICAgICAg
ICAgICBmcm9tIGRyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3OTE1L21jdS5j
OjQ6Cj4gSW4gZnVuY3Rpb24g4oCYX19tdDc5MTVfbWN1X21zZ19zZW5k4oCZLAo+ICAgICBpbmxp
bmVkIGZyb20g4oCYbXQ3OTE1X21jdV9zZW5kX21lc3NhZ2XigJkgYXQgZHJpdmVycy9uZXQvd2ly
ZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc5MTUvbWN1LmM6MzcwOjY6Cj4gLi9pbmNsdWRlL2xpbnV4
L2NvbXBpbGVyLmg6Mzk2OjM4OiBlcnJvcjogY2FsbCB0byDigJhfX2NvbXBpbGV0aW1lX2Fzc2Vy
dF81NDXigJkgZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJyb3I6IEJVSUxEX0JVR19PTiBmYWls
ZWQ6IGNtZCA9PSBNQ1VfRVhUX0NNRF9FRlVTRV9BQ0NFU1MgJiYgbWN1X3R4ZC0+c2V0X3F1ZXJ5
ICE9IE1DVV9RX1FVRVJZCj4gICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBf
X2NvbXBpbGV0aW1lX2Fzc2VydF8sIF9fQ09VTlRFUl9fKQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXgo+IC4vaW5jbHVkZS9saW51eC9jb21waWxlci5oOjM3Nzo0OiBu
b3RlOiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvIOKAmF9fY29tcGlsZXRpbWVfYXNzZXJ04oCZCj4g
ICAgIHByZWZpeCAjIyBzdWZmaXgoKTsgICAgXAo+ICAgICBefn5+fn4KPiAuL2luY2x1ZGUvbGlu
dXgvY29tcGlsZXIuaDozOTY6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmF9jb21w
aWxldGltZV9hc3NlcnTigJkKPiAgIF9jb21waWxldGltZV9hc3NlcnQoY29uZGl0aW9uLCBtc2cs
IF9fY29tcGlsZXRpbWVfYXNzZXJ0XywgX19DT1VOVEVSX18pCj4gICBefn5+fn5+fn5+fn5+fn5+
fn5+Cj4gLi9pbmNsdWRlL2xpbnV4L2J1aWxkX2J1Zy5oOjM5OjM3OiBub3RlOiBpbiBleHBhbnNp
b24gb2YgbWFjcm8g4oCYY29tcGlsZXRpbWVfYXNzZXJ04oCZCj4gICNkZWZpbmUgQlVJTERfQlVH
X09OX01TRyhjb25kLCBtc2cpIGNvbXBpbGV0aW1lX2Fzc2VydCghKGNvbmQpLCBtc2cpCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgo+IC4v
aW5jbHVkZS9saW51eC9idWlsZF9idWcuaDo1MDoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFj
cm8g4oCYQlVJTERfQlVHX09OX01TR+KAmQo+ICAgQlVJTERfQlVHX09OX01TRyhjb25kaXRpb24s
ICJCVUlMRF9CVUdfT04gZmFpbGVkOiAiICNjb25kaXRpb24pCj4gICBefn5+fn5+fn5+fn5+fn5+
Cj4gZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc5MTUvbWN1LmM6MjgwOjI6
IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhCVUlMRF9CVUdfT07igJkKPiAgIEJVSUxE
X0JVR19PTihjbWQgPT0gTUNVX0VYVF9DTURfRUZVU0VfQUNDRVNTICYmCj4gICBefn5+fn5+fn5+
fn4KPgo+IEJVSUxEX0JVR19PTiBpcyBtZWFuaW5nbGVzcyBoZXJlLCBjaGFuZyBpdCB0byBXQVJO
X09OLgo+Cj4gRml4ZXM6IGU1N2I3OTAxNDY5ZiAoIm10NzY6IGFkZCBtYWM4MDIxMSBkcml2ZXIg
Zm9yIE1UNzkxNSBQQ0llLWJhc2VkIGNoaXBzZXRzIikKPiBTaWduZWQtb2ZmLWJ5OiBZdWVIYWli
aW5nIDx5dWVoYWliaW5nQGh1YXdlaS5jb20+CgpJJ20gY3VyaW91cyB3aHkgSSBkb24ndCBzZWUg
dGhpcyBidWlsZCBlcnJvcj8gSSB3YXMgYWJvdXQgdG8gc2VuZCBhIHB1bGwKcmVxdWVzdCB0byBE
YXZlLCBzaG91bGQgSSBob2xkIG9mZiB0aGUgcHVsbCByZXF1ZXN0IGR1ZSB0byB0aGlzIHByb2Js
ZW0/CgotLSAKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9k
b2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
