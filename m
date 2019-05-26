Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA922AC75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 00:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVubn2D7TX2qjTLpAOKhqd6joA1DobLVAYzx1viyClM=; b=Src5sodBoqzxcl
	M2KrrzkARSrC1X30nW3N5PVzRm/u/8Yt2pfh4tI/r3PVYw8ezaKc3GJWEC/OfPRhq93q8pqDXgxZF
	zI5YNGcIk+yGVhzWWc+CGOmoeSzrPPbKFMiXyOmQvwXM/WWNoZln2Vv8ZsDjsd1IvLWQChDz+Gsd5
	UhLt3aawhPLg4ADLyrSWP8dFcrm4n1ApKsTKBgzqfDn2HLUWy2SKScrOhdMR0YfbqeKg8Rftu7IHk
	76CZCxpt8T9EMZtkvs9mZFyH9nGvGX5/q4UeiYyaEqIQSjxhT9mB9j8SwO5lw//4gWE/NN+x2TIF8
	yso61ijr/eLaSa1k8GCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV1bo-0005LB-3Y; Sun, 26 May 2019 22:27:16 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1aQ-0003e9-QB
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 22:25:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id z23so9890993wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 15:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K/XHCO5OpLMI7hm5w9MXtKPLk5GaTtp3symSRQtLrEY=;
 b=qvVdO1Ye4+/XAXtZVdsjjXyBiA9UbG/W56OF45mm+eREeUn7sXXC3zn78MNG9RDc74
 m8SFOUOKex8fNj8gGw2zWgBNxPQcy84SJLJmYhZTNJ46S7ua13TWTvBSnvrhO1rtqnT2
 DPGzNpLOW7TMds16+uLtVPJL3XjpKV1sauyZrR30M8iPCi/4cQo4iPZnnC9cmq2+z27s
 9xQ0TB6H2PHnVJ46ZjDYf9AoXA+/Ig7In+UyImznSlah8/ZWMQ+nuQqaXJcqI6NnBCpY
 UsvUN9eIRyqdtvPU8E85lWMoTdZZ4uPC5A5Z0PyLooWY8fXyA9j+Sed97RzBqFVRJ4c7
 Btmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K/XHCO5OpLMI7hm5w9MXtKPLk5GaTtp3symSRQtLrEY=;
 b=HzaOIFgF8RDM6TwHxh09dZvkEqH9xfhwkzDoVr3e2tb4AQ5Z+JyIiiBy0INVGOKnkJ
 wfOQwZkDc9msRkK9MaYAw3Y6wVtmhRS8KIkoYZ2xIQqggbgLvWOwG4d1sNf7xibIaRpA
 ebb+gXmif7n2pdV56SUv2kZI8JKnhNs27dmzE1lRha7Wu91+MVfvx52W6YjjL458waZ3
 JQh4gB/ioOPQsWU2ha1YuU/zQCtyYWYYYFyJ8UvomIJvBm1nUBtQ2KqUYQ2E3iSToOl1
 0eMuDi6yCnzKmwC3BT3X1/Z6vVFYBeoL3XIatPZHMwYg0tmtwDuGZt8Iye4e28J5OwWH
 jHog==
X-Gm-Message-State: APjAAAW+WcPQWrRJBxuVGJcX78VXtlzYZzeitj5z3dOmI61TeIqx7Ta3
 /sT6rr1BdyDHlR5EIt2WtIE=
X-Google-Smtp-Source: APXvYqwtHkAdpnDNLrKU8l3gQJCnqk74qB0FWxy3k2YmQonc0nW5ibfTNdfHiHYs9fHfC/i44RKzOg==
X-Received: by 2002:a1c:1b4a:: with SMTP id b71mr7822601wmb.177.1558909544853; 
 Sun, 26 May 2019 15:25:44 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o20sm10368398wro.2.2019.05.26.15.25.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 15:25:43 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 01/10] dt-bindings: media: sunxi-ir: add A31 compatible
Date: Mon, 27 May 2019 00:25:27 +0200
Message-Id: <20190526222536.10917-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526222536.10917-1-peron.clem@gmail.com>
References: <20190526222536.10917-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152551_151169_264F766F 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEEzMSBoYXMgaW50cm9kdWNlZCBhIG5ldyBtZW1vcnkgbWFwcGluZyBhbmQgYQpy
ZXNldCBsaW5lLgoKVGhlIGRpZmZlcmVuY2UgaW4gbWVtb3J5IG1hcHBpbmcgYXJlIDoKCi0gSW4g
dGhlIGNvbmZpZ3VyZSByZWdpc3RlciB0aGVyZSBpcyBhIG5ldyBzYW1wbGUgYml0CiAgYW5kIEFs
bHdpbm5lciBoYXMgaW50cm9kdWNlZCB0aGUgYWN0aXZlIHRocmVzaG9sZCBmZWF0dXJlLgoKLSBJ
biB0aGUgc3RhdHVzIHJlZ2lzdGVyIGEgbmV3IFNUQVQgYml0IGlzIHByZXNlbnQuCgpOb3RlOiBD
R1BPIGFuZCBEUlFfRU4gYml0cyBhcmUgcmVtb3ZlZCBvbiBBMzEgYnV0IHByZXNlbnQgb24gQTEz
CmFuZCBvbiBuZXcgU29DcyBsaWtlIEE2NC9INi4KVGhpcyBpcyBhY3R1YWxseSBub3QgYW4gaXNz
dWUgYXMgdGhlc2UgYml0cyBhcmUgdG9nZ2xhYmxlIGFuZCBuZXcKU29DcyBoYXZlIGEgZGVkaWNh
dGVkIGJpbmRpbmdzLgoKSW50cm9kdWNlIHRoaXMgYmluZGluZ3MgdG8gbWFrZSBhIGRpZmZlcmVu
Y2Ugc2luY2UgdGhpcyBnZW5lcmF0aW9uLgpBbmQgZGVjbGFyZSB0aGUgcmVzZXQgbGluZSByZXF1
aXJlZCBzaW5jZSBBMzEuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPgotLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9zdW54aS1pci50eHQgfCA5ICsrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWVkaWEvc3VueGktaXIudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dAppbmRleCAyNzgwOTg5ODdlZGIuLjJlNTlhMzJh
N2UzMyAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlh
L3N1bnhpLWlyLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVk
aWEvc3VueGktaXIudHh0CkBAIC0xLDE2ICsxLDIxIEBACiBEZXZpY2UtVHJlZSBiaW5kaW5ncyBm
b3IgU1VOWEkgSVIgY29udHJvbGxlciBmb3VuZCBpbiBzdW5YaSBTb0MgZmFtaWx5CiAKIFJlcXVp
cmVkIHByb3BlcnRpZXM6Ci0tIGNvbXBhdGlibGUJICAgIDogImFsbHdpbm5lcixzdW40aS1hMTAt
aXIiIG9yICJhbGx3aW5uZXIsc3VuNWktYTEzLWlyIgorLSBjb21wYXRpYmxlCSAgICA6CisJImFs
bHdpbm5lcixzdW40aS1hMTAtaXIiCisJImFsbHdpbm5lcixzdW41aS1hMTMtaXIiCisJImFsbHdp
bm5lcixzdW42aS1hMzEtaXIiCiAtIGNsb2NrcwkgICAgOiBsaXN0IG9mIGNsb2NrIHNwZWNpZmll
cnMsIGNvcnJlc3BvbmRpbmcgdG8KIAkJICAgICAgZW50cmllcyBpbiBjbG9jay1uYW1lcyBwcm9w
ZXJ0eTsKIC0gY2xvY2stbmFtZXMJICAgIDogc2hvdWxkIGNvbnRhaW4gImFwYiIgYW5kICJpciIg
ZW50cmllczsKIC0gaW50ZXJydXB0cwkgICAgOiBzaG91bGQgY29udGFpbiBJUiBJUlEgbnVtYmVy
OwogLSByZWcJCSAgICA6IHNob3VsZCBjb250YWluIElPIG1hcCBhZGRyZXNzIGZvciBJUi4KIAor
UmVxdWlyZWQgcHJvcGVydGllcyBzaW5jZSBBMzE6CistIHJlc2V0cwkgICAgOiBwaGFuZGxlICsg
cmVzZXQgc3BlY2lmaWVyIHBhaXIKKwogT3B0aW9uYWwgcHJvcGVydGllczoKIC0gbGludXgscmMt
bWFwLW5hbWU6IHNlZSByYy50eHQgZmlsZSBpbiB0aGUgc2FtZSBkaXJlY3RvcnkuCi0tIHJlc2V0
cyA6IHBoYW5kbGUgKyByZXNldCBzcGVjaWZpZXIgcGFpcgogLSBjbG9jay1mcmVxdWVuY3kgIDog
SVIgUmVjZWl2ZXIgY2xvY2sgZnJlcXVlbmN5LCBpbiBIZXJ0ei4gRGVmYXVsdHMgdG8gOCBNSHoK
IAkJICAgICBpZiBtaXNzaW5nLgogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
