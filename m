Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A231E0F60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 15:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ei45z8HWAG50SAdl1EpfA1nTUA5jIC8ELRJ8PIRAk/k=; b=ZCCQrUkJcca8N8
	4BfPdVrD/FqD0VB+RxlQLgHeHfLEN29SRvEMJFUG2r8lk+tHrago66VBWY/34tYmLeuLh5D5wS015
	Kyk9HFICm4fJPTfM8YNvNUbuwTuAfGC9WWm0IEaJV0lKKFF2/QmdaNefLVzNvOb3V4jZnVOB6CNOs
	DMNRgzblohhWiddLsNnATvcXb2LDpMPcGWsH9+DKR3YiOX9B4wKsJozXykLQ3J/44uP3qGgkdJKwy
	0UlRJplod2F+85pHHWIcftkh8AKogKvjQUupVtTSLyjtqOy7mJdicB/YSQOwTzLkVeWdF3ybOU6w5
	/W4lluUwXmSteHW7KlxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdD4v-0003s8-Qo; Mon, 25 May 2020 13:23:41 +0000
Received: from gateway20.websitewelcome.com ([192.185.58.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdD4d-0003p2-AT
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 13:23:26 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway20.websitewelcome.com (Postfix) with ESMTP id D2C10400D1C80
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 07:04:27 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id dD4cjXBIP8vkBdD4cjAB7U; Mon, 25 May 2020 08:23:22 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GXXdtueQYy1caDAxoJ6IfrNPBdlHFqXjUasF2a2SRgQ=; b=X4B/eycXMEVnUhBh5K1lbpBryM
 beEmXwyjno7R/gpNBaUaUc9d5wlnzAHMSfeyDwwDEl91nmfxbUTT+vVqYfPsq5F/BttQoM1QP/jcE
 ihzFMNyjup46OF1KZlmBZYEPHhpZBDDs9YjbzeviJcOgHz/hU+e9McQTNOSPBkoBY6b0ssp7ml3Sz
 oadwWMO4Isf6SQItLAq5+vbZm+PyNEUmgxK2O7KTRyYMh9o/9a6RdgSo1Ze/ThbJzJq1Ehj7/3ha/
 xVEl00TLnFeFkjzvSPRPQqrI291vfRZKHzqMYcAi1ZmjKXQAlNfngmY8mMM3I7wo3qyI+Jhbvnw0g
 pkDx1HNQ==;
Received: from [191.31.196.240] (port=46922 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jdD4b-002bEq-To; Mon, 25 May 2020 10:23:22 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v6 1/3] dt-bindings: Add vendor prefix for Caninos Loucos
Date: Mon, 25 May 2020 10:22:16 -0300
Message-Id: <20200525132218.190841-2-matheus@castello.eng.br>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200525132218.190841-1-matheus@castello.eng.br>
References: <20200525132218.190841-1-matheus@castello.eng.br>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.196.240
X-Source-L: No
X-Exim-ID: 1jdD4b-002bEq-To
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.196.240]:46922
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 16
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_062323_468627_E1C5214B 
X-CRM114-Status: UNSURE (   6.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.58.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.185.58.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
OgotLQoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
