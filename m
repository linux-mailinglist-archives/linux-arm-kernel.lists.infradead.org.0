Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D4C1B91E9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 18:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvuQVh4oB04b2hZqx5GNXYR2/61eEyFupnaeQZR2Dms=; b=Qf9J04jCwbdocp
	JkcbRYuvASptaVbWGznB9UIU/Jgi0qsE2RQWWi+UWBTqUr37EL7/qdUnPUFQ+032RrWG+rR4epguk
	whByUYj9YMLm1z1ZVG+4NLyI4ONl4erykQqKFOsMzEfNlcHK6i8Bx4m2UCflHEvvITOFu1HKaVKmy
	vXLOPW/hwAslmaTFgAyP3hOpRW3AygSF3dY1Uc8jG+2z5eNh80T0izEVEzURFzxWDEZRpXc5w0G6C
	ORaAwcwyy35UVfci4gu6oWGLoYHY31aqM3o78n4txVxEBZYUUJOzcx2auPlDh0/jPgcJMLNWJu0yS
	aijrna3Lo/dzZ0RgTWjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSkdA-0005VO-E3; Sun, 26 Apr 2020 16:59:48 +0000
Received: from gateway23.websitewelcome.com ([192.185.49.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSkcr-0005TB-Mi
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 16:59:33 +0000
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway23.websitewelcome.com (Postfix) with ESMTP id 15B2D4D21
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 11:59:28 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id Skcqjvkv1XVkQSkcqj5vVG; Sun, 26 Apr 2020 11:59:28 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e+jJxdcYJ/hbFBY+xD9PXWL+/xiGmlod4Jp6X2xhM4Q=; b=pdUqdKvEoQiXcCIa/mtQVbSCLh
 z5hYqIvXV0mJ5uKgPq6owU8zXlWBFNIJhLGhrRUD8XD/VtHDnsthk81EFzxKrdiPrcw4QsaXiavHK
 /3PtccT7GK7bTa5BKbSGRJOpaXF860Uo6uiz2M2FazsimupI38iwdockxjdPKR+8Cs2y7KlnH8JVN
 Bg2gu7/IE7FRopdHr+WuLjxlluAOgMolo7RHgTrL1eGtN8BiVD7oVhDbQFHHCC1Bpe/XTw8zPrqG4
 YxenjeuY2344IJ0bBg8PgclRIDZuYbDOfwbWPrUOJLksFNL46/rfMceV9WCON9N/lvuPuokmMe/vz
 iK6Lw7Jg==;
Received: from [191.31.197.205] (port=35482 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jSkcp-001TTf-G5; Sun, 26 Apr 2020 13:59:27 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v4 1/3] dt-bindings: Add vendor prefix for Caninos Loucos
Date: Sun, 26 Apr 2020 13:58:33 -0300
Message-Id: <20200426165835.105970-2-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200426165835.105970-1-matheus@castello.eng.br>
References: <f9e48fba-0da8-7ba9-d44a-7909067a1df1@castello.eng.br>
 <20200426165835.105970-1-matheus@castello.eng.br>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.197.205
X-Source-L: No
X-Exim-ID: 1jSkcp-001TTf-G5
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.197.205]:35482
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 30
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_095929_835055_9B55576B 
X-CRM114-Status: UNSURE (   5.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.49.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Matheus Castello <matheus@castello.eng.br>, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, igor.lima@lsitec.org.br,
 edgar.righi@lsitec.org.br, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIENhbmlub3MgTG91Y29zIFByb2dyYW0gZGV2ZWxvcHMgU2luZ2xlIEJvYXJkIENvbXB1dGVy
cyB3aXRoIGFuIG9wZW4Kc3RydWN0dXJlLiBUaGUgUHJvZ3JhbSB3YW50cyB0byBmb3JtIGEgY29t
bXVuaXR5IG9mIGRldmVsb3BlcnMgdG8gdXNlCklvVCB0ZWNobm9sb2dpZXMgYW5kIGRpc3NlbWlu
YXRlIHRoZSBsZWFybmluZyBvZiBlbWJlZGRlZCBzeXN0ZW1zIGluCkJyYXppbC4KCkl0IGlzIGFu
IGluaXRpYXRpdmUgb2YgdGhlIFRlY2hub2xvZ2ljYWwgSW50ZWdyYXRlZCBTeXN0ZW1zIExhYm9y
YXRvcnkKKExTSS1URUMpIHdpdGggdGhlIHN1cHBvcnQgb2YgUG9seXRlY2huaWMgU2Nob29sIG9m
IHRoZSBVbml2ZXJzaXR5IG9mClPDo28gUGF1bG8gKFBvbGktVVNQKSBhbmQgSm9uICJNYWRkb2ci
IEhhbGwuCgpTaWduZWQtb2ZmLWJ5OiBNYXRoZXVzIENhc3RlbGxvIDxtYXRoZXVzQGNhc3RlbGxv
LmVuZy5icj4KQWNrZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+ClJldmlld2Vk
LWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sIHwgMiArKwogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbAppbmRleCBkMzg5MTM4NmQ2NzEu
LmEyMGEwNWUzZGVhYSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbApAQCAtMTY3LDYgKzE2Nyw4IEBAIHBhdHRlcm5Q
cm9wZXJ0aWVzOgogICAgIGRlc2NyaXB0aW9uOiBDQUxBTyBTeXN0ZW1zIFNBUwogICAiXmNhbHhl
ZGEsLioiOgogICAgIGRlc2NyaXB0aW9uOiBDYWx4ZWRhCisgICJeY2FuaW5vcywuKiI6CisgICAg
ZGVzY3JpcHRpb246IENhbmlub3MgTG91Y29zIFByb2dyYW0KICAgIl5jYXBlbGxhLC4qIjoKICAg
ICBkZXNjcmlwdGlvbjogQ2FwZWxsYSBNaWNyb3N5c3RlbXMsIEluYwogICAiXmNhc2NvZGEsLioi
OgotLQoyLjI1LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
