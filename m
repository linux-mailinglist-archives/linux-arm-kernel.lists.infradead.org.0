Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EE210114A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 03:21:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4b9haWEvTC24IbBgduR4u7Og+yHJv+dO1tc/IHx+KI=; b=gngLj3kAoFTcDP
	ywP8GTS6GmsqfjSlWSKwLBW0cENpUId+E3kPEm3ibKmslGg2Yg8ZMuvYIu1Nmk0OMfYdqIwPYrot1
	Fb5eszDdoh/sTvD0eP8WYrZy0H1OkV59u8M9glmXTzJr4Py0jc5kUZCd/dk087qSqx4snAGJsGENZ
	LhMKip/jaM7UvUckFtuP1g70YbPqhAfpyzLRXaFaLJ2neToVBaKdpCB3nnZvMfpMVZ/DoKhQXfnIw
	0++skFTD5vgrfEwFcaQzHf4qo0y3X0hTu/YlI286TwVqNknpLbaJR0FlT/qZ/0U7odQjOYceggqFS
	KzOzIv8zDPqYJPam/eXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWt8z-0000qY-Hb; Tue, 19 Nov 2019 02:21:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWt76-0006UY-3p; Tue, 19 Nov 2019 02:19:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A7D12B331;
 Tue, 19 Nov 2019 02:19:24 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v4 6/8] dt-bindings: interrupt-controller: rtd1195-mux: Add
 RTD1395
Date: Tue, 19 Nov 2019 03:19:15 +0100
Message-Id: <20191119021917.15917-7-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191119021917.15917-1-afaerber@suse.de>
References: <20191119021917.15917-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_181932_318469_C8D9479A 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGNvbXBhdGlibGUgc3RyaW5ncyBmb3IgUmVhbHRlayBSVEQxMzk1IFNvQy4KClNpZ25lZC1v
ZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiB2NDogTmV3CiAK
IC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0ZWsscnRk
MTE5NS1tdXgueWFtbCAgIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQt
Y29udHJvbGxlci9yZWFsdGVrLHJ0ZDExOTUtbXV4LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvcmVhbHRlayxydGQxMTk1LW11eC55
YW1sCmluZGV4IDVjZjNhMjhjZWRiYS4uN2MyYTMxNTQ4ZDQ2IDEwMDY0NAotLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvcmVhbHRlayxy
dGQxMTk1LW11eC55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9p
bnRlcnJ1cHQtY29udHJvbGxlci9yZWFsdGVrLHJ0ZDExOTUtbXV4LnlhbWwKQEAgLTE5LDYgKzE5
LDggQEAgcHJvcGVydGllczoKICAgICAgIC0gcmVhbHRlayxydGQxMTk1LWlzby1pcnEtbXV4CiAg
ICAgICAtIHJlYWx0ZWsscnRkMTI5NS1taXNjLWlycS1tdXgKICAgICAgIC0gcmVhbHRlayxydGQx
Mjk1LWlzby1pcnEtbXV4CisgICAgICAtIHJlYWx0ZWsscnRkMTM5NS1taXNjLWlycS1tdXgKKyAg
ICAgIC0gcmVhbHRlayxydGQxMzk1LWlzby1pcnEtbXV4CiAKICAgcmVnOgogICAgIG1heEl0ZW1z
OiAxCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
