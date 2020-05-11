Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 456311CD8EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJFLkoy2nqyIHbRN6oZleme0uQEpuNanb2YYXTZSEqo=; b=HihJM7gY8SpDQp
	Ucinj344A2Tuiyr0QgoV82ubok4zu6s+heoiunBdhhtV4YE++UPH6TjzsV2Fi3cLwbLM433dR2Vha
	c3tCyzRPvn0Pg9w87FvDUewENJ7qGMpUeL9qlz8uCtzus2p8wiZGJ7nE7uyus/jSS6Rgt69urVSs8
	pt/ZW/NpQMgQxJ+l3EHi+FFTD40Zo806QXNq6/89UrE9bBhRDlooalp8UWZUZS6UanwbYNI2conVI
	/ULgvuwtAZ2PsbRLbUpe56QJ2qhq6a+b4iXZIlksfN3Fm7djIFUc1mVqx5mFj9jOJm+Nrb4ruac+8
	JihXN9YJDNP1HSuosOuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6yt-00013S-8W; Mon, 11 May 2020 11:52:23 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6yZ-0000xS-Dr
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:52:04 +0000
Received: by mail-ot1-f67.google.com with SMTP id j26so7307389ots.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:52:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QBS6Y+t72e0Ijgdesacjs6aSIRVgqjNju5FgbWy7u4c=;
 b=aPcq45C+JGz2643EYNLl3vZy9JAL5ownzQXps8dyWuKOggDx4ERPul/fIuRNQzEg1t
 p3tIC8wl7o24ZQ316i9dxn6OvHjao2VN9g2HktwJRf1qs/DU6gH7oEOjXQyITvW1CKJU
 75qaO4AXVxqZuVuPoUlupoY0vcqfEn+WHb1boCzgWpVE7YhYNWrmcMVeDeH06YE0Aafy
 Dnoi0VLIxyr+gzN17iyp7/U0Cp4yQ4O2paPOBjVMZ7ru23XhKrhA8mxNsefYX3aTIR5V
 riN/S8w8bqTZ/yffrOjqk1PbRLmn/UOWADdQS/lMW1qQ7/M4XsNV1hMA0JjdLSArGgiy
 eHlw==
X-Gm-Message-State: AGi0PuYWfMFrHGVo8qL18uMrMBuqQ4/aIzF5DVWTIZ4DW03OTvBB4ezB
 duzant+L5/R3IL/DLp5VU2S2FGk9JdgPIoSD0P087vAK
X-Google-Smtp-Source: APiQypIROHYLmrNYKuJ5mkgwJXioUskfOWsAa6GSqYc8q46EHLwyAnGStV3XVLa/O66BHh6GwVrKNMIAhYIgBlVn3Eo=
X-Received: by 2002:a9d:63da:: with SMTP id e26mr11517448otl.107.1589197922357; 
 Mon, 11 May 2020 04:52:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-3-ricardo.canuelo@collabora.com>
In-Reply-To: <20200511110611.3142-3-ricardo.canuelo@collabora.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 May 2020 13:51:51 +0200
Message-ID: <CAMuHMdVNxueF0=J3nZ788Cax-2WOtaeEtY0S_bDZtDhN=fQG6Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] ARM: dts: renesas: make hdmi encoder nodes
 compliant with DT bindings
To: =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_045203_488883_8EFADEDF 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Wei Xu <xuwei5@hisilicon.com>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMTEsIDIwMjAgYXQgMTowNiBQTSBSaWNhcmRvIENhw7F1ZWxvCjxyaWNhcmRv
LmNhbnVlbG9AY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gU21hbGwgZml4ZXMgdG8gbWFrZSB0aGVz
ZSBEVHMgY29tcGxpYW50IHdpdGggdGhlIGFkaSxhZHY3NTExdyBhbmQKPiBhZGlhZHY3NTEzIGJp
bmRpbmdzOgo+Cj4gcjhhNzc0NS1pd2cyMmQtc29kaW1tLWRiaGQtY2EuZHRzCj4gcjhhNzc5MC1s
YWdlci5kdHMKPiByOGE3NzkwLXN0b3V0LmR0cwo+IHI4YTc3OTEta29lbHNjaC5kdHMKPiByOGE3
NzkxLXBvcnRlci5kdHMKPiByOGE3NzkyLWJsYW5jaGUuZHRzCj4gcjhhNzc5My1nb3NlLmR0cwo+
IHI4YTc3OTQtc2lsay5kdHM6Cj4gUmVtb3ZlIHRoZSBhZGksaW5wdXQtc3R5bGUgYW5kIGFkaSxp
bnB1dC1qdXN0aWZpY2F0aW9uIHByb3BlcnRpZXMKPgo+IHI4YTc3OTItd2hlYXQuZHRzOgo+IFJl
b3JkZXIgdGhlIEkyQyBzbGF2ZSBhZGRyZXNzZXMgb2YgaGRtaUAzZCBhbmQgaGRtaUAzOSBhbmQg
cmVtb3ZlIHRoZQo+IGFkaSxpbnB1dC1zdHlsZSBhbmQgYWRpLGlucHV0LWp1c3RpZmljYXRpb24g
cHJvcGVydGllcy4KPgo+IFNpZ25lZC1vZmYtYnk6IFJpY2FyZG8gQ2HDsXVlbG8gPHJpY2FyZG8u
Y2FudWVsb0Bjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8
Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAg
ICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90
cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29u
YWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBo
YWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInBy
b2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
