Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B41B3B3EF2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OhkQFtOFQY8JgB1DFRMbcnL86kt4KZdfOArUyTdxdoE=; b=Hk/FkU+gpNV/2Z
	LaiEzTGeW+gjj+zOiMw6nUJ3Td3afctXBFzfssFu79dIEuIrRvjyitJuEdxYfxGXUh/+tKoiCiV2g
	XW9j7R66Zc7H5p8FTG9g1KB+sVtCora+sWnoxTbQFAT+5xOzpeQXziB9gkkuddcFaRPAZszaLQWV1
	gM+GoR4KETg5UgHbYKkT6BW1xLaB/4jdxE0udSF9DRhA6Cq6OeoBz6Q8gOZ8M3At+fjkFaLl2seM9
	qoFE/7E7POxWsMTcA32TxjKShbEhfxOqrktDVZu7nwGLuF98pWskVOXTqSfICrgcz5/dEsWkJrX50
	FLela27fsck3fd77OowA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tr2-0002Ji-Nf; Mon, 16 Sep 2019 16:27:56 +0000
Received: from mail-lf1-f68.google.com ([209.85.167.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tqo-0002JL-Jv
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:27:45 +0000
Received: by mail-lf1-f68.google.com with SMTP id r22so483700lfm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 09:27:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=r1I3ubFRQxTCySRy5+UY5825OeDC5ZPkKse2Bq/uThY=;
 b=eIRg8kkeAiKpXyioBEv6frhD8W8bKH8k2Ky4+StF1GVhBqBrK+4GSfXwBbg86xxPv5
 jLiBaHQnaMJntQQi6vjmES7J2KC0li+zA8+P2ojDybCALg7naDNH3jwcVlvPC65Dfev+
 RAtbVfLpVBkdyYw4NYlmV7S7zVa9hldPsFVi61drXqd0jlqpcfMqqU28Lcpjxm4loN7R
 cm9VzCA4EJIGv4N+XF2rB4gRmRANqL9G4CF9o4PO+46dhUABV0RcXWjcjhee80X3/gfR
 vSN95c+vmrRj/jmyY3729Jbbn1EENEMFvU7kUmA9By6W4cgqXCmEbVsrCG706+e2kvoL
 yQpA==
X-Gm-Message-State: APjAAAVbvKKaosjMGIvzOYMcMtonROriRS4SfnXGmFWZZxVaKNhBzXlh
 nbOl+hrpsI8vJJS0jBhHfh1NR6Lm3uhvc4yMxNY=
X-Google-Smtp-Source: APXvYqyvfm/k9nKW0IhihBEDJJVQPxJmW7LhRNIEF/JoaU6Pivc5dTcRZO911b3Vi4E6zfmL0HBQie8susm9hxVPMfY=
X-Received: by 2002:a05:6512:202:: with SMTP id
 a2mr122633lfo.175.1568651260733; 
 Mon, 16 Sep 2019 09:27:40 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Sep 2019 18:27:23 +0200
Message-ID: <CAK8P3a3ArYx8LUbYhjTw2wOEZgK9mJOE_PaLzuZTfn29Z5+K3Q@mail.gmail.com>
Subject: [GIT PULL 0/5] ARM SoC updates for v5.4, part 1
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_092742_649182_9F86F3F8 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: SoC Team <soc@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyB0aGUgZmlyc3Qgc2V0IG9mIEFSTSBTb0MgdXBkYXRlcywgc3BsaXQgaW50byB0aGUg
dXN1YWwgc29jLApkcml2ZXIsIGRlZmNvbmZpZyBhbmQgZHQgYnJhbmNoZXMuIFRoZXJlIGlzIGFs
c28gYSAibGF0ZSIgYnJhbmNoCmFnYWluIHRoYXQgSSBwbGFuIHRvIHNlbmQgYWZ0ZXIgbW9yZSBv
ZiB0aGUgZGVwZW5kZW5jaWVzIGFyZQptZXJnZWQuCgpJbiB0b3RhbCwgd2UgaGF2ZSA3NDMgbm9u
LW1lcmdlIGNoYW5nZXNldCwgbW9zdCBvZiB3aGljaApjYW1lIHRocm91Z2ggODMgcHVsbCByZXF1
ZXN0cyBpbnRvIG91ciB0cmVlLiBUaGlzIGlzIGFnYWluIGEKc21hbGxlciByZWxlYXNlIGZvciB1
cywgYnV0IG5vdCBleGNlcHRpb25hbGx5IHNtYWxsLiA0NzYgb2YgdGhlCmNvbW1pdHMgYXJlIGZv
ciBkZXZpY2UgdHJlZSBjaGFuZ2VzLgoKQXMgbXVsdGlwbGUgb2YgdGhlIG9sZGVyIHBsYXRmb3Jt
cyBhcmUgcmVtb3ZlZCwgdGhlIGEgbG90IG9mIGNvZGUKZ2V0cyByZW1vdmVkLCBidXQgbm90IGFz
IG11Y2ggYXMgd2UgYWRkLiBUaGUgb3ZlcmFsbCBkaXJzdGF0CihpbmNsdWRpbmcgdGhlIGxhdGUg
YnJhbmNoKSBpczoKCiAgIDEuMyUgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzLwog
IDE3LjclIGFyY2gvYXJtL2Jvb3QvZHRzLwogICAxLjElIGFyY2gvYXJtL2NvbmZpZ3MvCiAgIDAu
NiUgYXJjaC9hcm0vbWFjaC1kYXZpbmNpLwogICAzLjMlIGFyY2gvYXJtL21hY2gtaW9wMTN4eC9p
bmNsdWRlL21hY2gvCiAgIDQuNCUgYXJjaC9hcm0vbWFjaC1pb3AxM3h4LwogICAxLjElIGFyY2gv
YXJtL21hY2gtaW9wMzN4LwogICAxLjIlIGFyY2gvYXJtL21hY2gta3M4Njk1L2luY2x1ZGUvbWFj
aC8KICAgMy41JSBhcmNoL2FybS9tYWNoLWtzODY5NS8KICAgMS4yJSBhcmNoL2FybS9tYWNoLW9t
YXAyLwogICAxLjIlIGFyY2gvYXJtL21hY2gtdzkweDkwMC9pbmNsdWRlL21hY2gvCiAgIDMuMyUg
YXJjaC9hcm0vbWFjaC13OTB4OTAwLwogICAyLjYlIGFyY2gvYXJtLwogICAwLjUlIGFyY2gvYXJt
NjQvYm9vdC9kdHMvYWxsd2lubmVyLwogICA5LjclIGFyY2gvYXJtNjQvYm9vdC9kdHMvYW1sb2dp
Yy8KICAgNS42JSBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS8KICAgMS4xJSBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL21hcnZlbGwvCiAgIDUuNiUgYXJjaC9hcm02NC9ib290L2R0cy9xY29tLwog
ICAwLjglIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy8KICAgMC45JSBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwLwogICAwLjYlIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvCiAgIDAuNSUg
YXJjaC9hcm02NC9ib290L2R0cy8KICAgMS41JSBkcml2ZXJzL2J1cy8KICAgMi40JSBkcml2ZXJz
L2Nsay9pbXgvCiAgIDcuOSUgZHJpdmVycy9jbGsvbWVzb24vCiAgIDEuNyUgZHJpdmVycy9jbGsv
CiAgIDEuNSUgZHJpdmVycy9maXJtd2FyZS9hcm1fc2NtaS8KICAgMS4xJSBkcml2ZXJzL2Zpcm13
YXJlLwogICAwLjYlIGRyaXZlcnMvZ3Bpby8KICAgMy4wJSBkcml2ZXJzL25ldC9ldGhlcm5ldC9t
aWNyZWwvCiAgIDEuNyUgZHJpdmVycy9uZXQvZXRoZXJuZXQvbnV2b3Rvbi8KICAgMS4yJSBkcml2
ZXJzL3NvYy9hbWxvZ2ljLwogICAwLjUlIGRyaXZlcnMvc29jL2ZzbC9xYm1hbi8KICAgMS4wJSBk
cml2ZXJzL3NvYy9xY29tLwogICAwLjclIGRyaXZlcnMvc29jLwogICAwLjUlIGRyaXZlcnMvc3Bp
LwogICAxLjUlIGRyaXZlcnMvdmlkZW8vZmJkZXYvCiAgIDAuOCUgZHJpdmVycy8KICAgMC42JSBp
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrLwogICAwLjYlIGluY2x1ZGUvZHQtYmluZGluZ3MvcmVz
ZXQvCiAgIDAuOCUgaW5jbHVkZS9saW51eC8KIDg0MSBmaWxlcyBjaGFuZ2VkLCAzNzkxOSBpbnNl
cnRpb25zKCspLCAyNjA0MyBkZWxldGlvbnMoLSkKCkNvbnRyaWJ1dG9ycyB3aXRoIHRoZSBtb3N0
IG5vbi1tZXJnZSBjb21taXRzIHRoaXMgdGltZSBhcmU6CgogICAgIDQ5IE5laWwgQXJtc3Ryb25n
CiAgICAgMzEgQW5zb24gSHVhbmcKICAgICAyOCBBcm5kIEJlcmdtYW5uCiAgICAgMjYgWW9zaGlo
aXJvIEthbmVrbwogICAgIDIzIFN1ZGVlcCBIb2xsYQogICAgIDE5IFZpbm9kIEtvdWwKICAgICAx
OSBUb255IExpbmRncmVuCiAgICAgMTcgTWF4aW1lIFJpcGFyZAogICAgIDE3IEJhcnRvc3ogR29s
YXN6ZXdza2kKICAgICAxNSBMaW51cyBXYWxsZWlqCiAgICAgMTQgSm9lbCBTdGFubGV5CiAgICAg
MTMgQWxleGFuZHJlIE1lcmduYXQKICAgICAxMiBNYXJlayBCZWjDum4KICAgICAxMiBMb2tlc2gg
VnV0bGEKICAgICAxMiBHZWVydCBVeXR0ZXJob2V2ZW4KICAgICAxMiBDaHJpc3RpYW4gSGV3aXR0
CiAgICAgMTEgVXdlIEtsZWluZS1Lw7ZuaWcKICAgICAxMSBGYWJyaXppbyBDYXN0cm8KICAgICAx
MCBTdGVmYW4gUmllZG11ZWxsZXIKICAgICAgOSBNYXR0aGlhcyBLYWVobGNrZQoKICAgICAgIEFy
bmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
