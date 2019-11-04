Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564B8ED718
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:41:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uTrtK3dvbl/7UH199ochxvu6b7G+A1iYRUehdnCxBs=; b=lisuVRra9fEGup
	jQH0QaG2QW1gaibO3K1sKvsZAArWOFiRXr4/R6Te6UAc3QqF0t2nE+K4bR1T6JWCL7hwiyLq2efs3
	gskmNK8VK62LE2PQTJHJTqfRgjnj2cL/N5At/ilQkO93GM8rPSHE2htPoDMThXtyGr8wcvHcEYPME
	YmkX5JmwImKLeOILoSwN8cGhMnm9U7Z00Vi2cUz7PhWqmm0W5fax8xT4cN2jl57FPyWtpUCrdIPd7
	KkiwaaqvHKXgOpC2JyTx2b+drDG3enWbvJLRswbGllRPutik5HnqDK6LM7YHFk6F4JfAlabr3sTxF
	+S2kCW23EDxhVJJRo4iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRMk-0003my-4m; Mon, 04 Nov 2019 01:41:10 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRM5-0003Hp-Nu; Mon, 04 Nov 2019 01:40:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E6856B228;
 Mon,  4 Nov 2019 01:40:26 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 4/7] dt-bindings: gpu: mali-utgard: Add Realtek RTD1195
Date: Mon,  4 Nov 2019 02:39:29 +0100
Message-Id: <20191104013932.22505-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191104013932.22505-1-afaerber@suse.de>
References: <20191104013932.22505-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_174029_948205_DB35372E 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVmaW5lIGEgY29tcGF0aWJsZSBzdHJpbmcgZm9yIFJlYWx0ZWsgUlREMTE5NSBTb0MgZmFtaWx5
LgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0K
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncHUvYXJtLG1hbGktdXRnYXJkLnlh
bWwgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncHUvYXJtLG1hbGktdXRnYXJkLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3B1L2FybSxtYWxpLXV0Z2FyZC55
YW1sCmluZGV4IGFmZGU4MWJlM2MyOS4uYjAxYjk1Y2Y1Y2RmIDEwMDY0NAotLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3B1L2FybSxtYWxpLXV0Z2FyZC55YW1sCisrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncHUvYXJtLG1hbGktdXRnYXJkLnlh
bWwKQEAgLTI2LDYgKzI2LDcgQEAgcHJvcGVydGllczoKICAgICAgICAgICAgICAgLSBhbGx3aW5u
ZXIsc3VuN2ktYTIwLW1hbGkKICAgICAgICAgICAgICAgLSBhbGx3aW5uZXIsc3VuOGktaDMtbWFs
aQogICAgICAgICAgICAgICAtIGFsbHdpbm5lcixzdW41MGktYTY0LW1hbGkKKyAgICAgICAgICAg
ICAgLSByZWFsdGVrLHJ0ZDExOTUtbWFsaQogICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzAz
Ni1tYWxpCiAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMDY2LW1hbGkKICAgICAgICAgICAg
ICAgLSByb2NrY2hpcCxyazMxODgtbWFsaQotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
