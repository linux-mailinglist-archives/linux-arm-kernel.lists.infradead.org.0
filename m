Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BD730AF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 11:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lWdThiDMjk15toHrpXjP8ZSjs/Bmhq3BT2blYPg5GaM=; b=CO3RG7420bgsDJ
	3Hfm3DcYXe4FNTMGvqO2DBF4UccXonTIr1gS8aOilC12AewdyWfYUY6sF8rr7QPrNeih4TX8Ijd7k
	QdpmyJlkEkIcOFna3FIqjlepCo3yR0dhY8tNK4ZZ0MrgmwrUb26m5gNI3QCyylVGES6fc1o/fpfOe
	Lje23T4Tx3YTUaud57AvrcXSTbgfX3gvVan8FEs38N+V2rIBl5V6jYDB/fqGjjRRSZtHm3WWLJ6WU
	wJRH1JtCpUFH0+kqoWWeg4PI0bfZeOWNEa0lS4zxL2gpbF59u7JXShRGT9chQCjuPwoy9Ama4rZ1W
	bNJbCOuL9XLvTZZuGccg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdQe-0004jA-Ds; Fri, 31 May 2019 09:02:24 +0000
Received: from mail.tastiess.eu ([194.182.86.235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdQX-0004ij-4g
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 09:02:18 +0000
Received: by mail.tastiess.eu (Postfix, from userid 1001)
 id E14298AA09; Fri, 31 May 2019 11:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tastiess.eu; s=mail;
 t=1559293284; bh=Pq3JAJM5iF8ICERSPFAm/P648K1IfJ1sBmhj3v1LJ9Q=;
 h=Date:From:To:Subject:From;
 b=ZGbye1FQ2WgXeZzNRbfuxPM1pjBxFxo+WTTV23z9o/3L1/PG9LdWnff77vn8dBo/Q
 +quAAzMmaKOBopTsQUUY3cOR80wzuMEKT0X++ReMQoXkAecsAPrfUSI9YCXT7rkbHi
 8dgE38FsUVdvpX5oJ0eLFaNPnwGt4XBNPJ1NxA2w=
Received: by mail.tastiess.eu for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 09:00:56 GMT
Message-ID: <20190531100930-0.1.1e.f5k.0.gpjdihj5qu@tastiess.eu>
Date: Fri, 31 May 2019 09:00:56 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <matyas@tastiess.eu>
To: <linux-arm-kernel@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.tastiess.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_020217_353022_3B466940 
X-CRM114-Status: UNSURE (   1.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

w5xkdsO2emzDtm0hCgoyMDE5IGphbnXDoXJqw6F0w7NsIGplbGVudMWRc2VuIMOhdGFsYWt1bHQg
bWluZCBhIGp1dHRhdMOhc29rIGFkw7N6w6FzYSwgbWluZCBhIHBpYWNvbiBlbMOpcmhldMWRIGp1
dHRhdMOhc2kgdGVybcOpa2VrIGvDtnJlLiAgCgpBbWVubnlpYmVuIMOWbm5layBpcyBmZWp0w7Zy
w6lzdCBva296LCBtaXZlbCBww7N0b2xqYSBhIGtvcsOhYmJhbiBoYXN6bsOhbHQgRXJ6c8OpYmV0
IHV0YWx2w6FueXQsIGlzbWVyamUgbWVnIGvDoXJ0ecOhaW5rYXQgw6lzIHV0YWx2w6FueWFpbmth
dCwgbWVseWVrIGF6IMOWbiBjw6lnw6luZWsgaXMga8OtdsOhbMOzIGFsdGVybmF0w612w6F0IG55
w7pqdGhhdG5hay4KCkEgU1rDiVAga8OhcnR5w6Fob3oga8OpcGVzdCBqdXR0YXTDoXNpIGvDoXJ0
ecOhaW5rYXQgasOzdmFsIHN6w6lsZXNlYmIga8O2cmJlbiBoYXN6bsOhbGhhdGrDoWsga8OhcnR5
YWJpcnRva29zYWluayB0w7ZiYmVrIGvDtnrDtnR0IMOpbGVsbWlzemVyIHbDoXPDoXJsw6FzcmEs
IGVnw6lzenPDqWfDvGd5aSBzem9sZ8OhbHRhdMOhc29rcmEsIGVsZWt0cm9uaWthaSB0ZXJtw6lr
ZWtyZSwgw7xkw7xsw6lzcmUsIHRhbmtvbMOhc3JhIOKAkyBha8OhciBrw6lzenDDqW56ZmVsdsOp
dGVsaSBsZWhldMWRc8OpZ2dlbCBpcy4KClN6ZXJldG7DqSBtZWdpc21lcm5pLCBtaWx5ZW4gbGVo
ZXTFkXPDqWdla2V0IGvDrW7DoWx1bmsganV0dGF0w6FzaSB0ZXJtw6lrZWlua2tlbD8gIAoKCkth
cG9sY3MgTcOhdHnDoXMKSHVuZ2FyeSBUZWFtIExlYWRlciAgCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
