Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DD21CD8E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RN80PSIJUUVUO0jJxo71HguXOPCvE7hsQnv+l58qldg=; b=FGFM3L0mkAPoC5
	pPFpAbLUC2yQLhnDejC+7adhU7X37I9qliUSLv2yPBkfQrFtGtw4jdTYTUlXU8eCz9GZqLcvwFH09
	fPyKSs+Fl+iklth2a0leGAc/s1aZEjOJJ9QQDULBYqVdpqsz5LdVkwU8WDgxnsbFnk7+29Pq+vYwK
	bpCM8DFWa0vgfTWt9yjbWECKagR4WbVxkfvlfRsUS69xSZAOrKV975N2XrVjtymQ7zTJfoPMsM6wW
	Mx4Dr05hDVA0WjPo4oyJUAwMdVtBmMFltU79xID8jv6Va0AKnxtH9G5Dm2AH3wAp3bflWQuxj71aF
	vggfOYTifuplfDz3Zs2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6y3-0000Pg-CK; Mon, 11 May 2020 11:51:31 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6xw-0000Oj-5p
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:51:25 +0000
Received: by mail-oi1-f195.google.com with SMTP id k133so14602489oih.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:51:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hW15TcE71gsbBVg2kI12Ssrf3EfANmSXapsfwYoYaWc=;
 b=KztoidTRWR9hpdA6GVAgLzahF1jA2S3F6bjDKAVeqlz6gPJaEm5tKjGEA4CSRWkIRf
 dVCg1+gOHXpMVZw7j4CoyvZP6Qgbx1iqcZ27SGe6ju2xHP0bShoIiuCRtrEENj7ROPa3
 gdTCNHFM3YfGRqokkf9HzDQEVSiPkJPZVFLx6tlz8zbvMSUv+tOHbM4lY9xZa2A/Za+S
 jmmAs8PMl3GKiWAc1IhMNVmdmjXB3+IiAge6XHb+JAd5ypKMseG0E1/2dM3co+ilXPlg
 flSO8sBEq2EbaKES7q8E6bIU8aMf7UCagD2ZuQpcR7bptiDHXkCXUtQt81xgxCunBThL
 ERKA==
X-Gm-Message-State: AGi0PuYZBgP1D32IFTvHTSQgLk6hhKK+9/CM40J1Rl5eGTAHqQYyly5F
 g/GhyGNmB542C4IlWGPZL3onMMpVhC3C0K1Wls8=
X-Google-Smtp-Source: APiQypKKcWumoCx2WrwMXDUmLXShQe901ZvBEln7LKgQn/MOfam8b34IDER5Z2sdGj3EDQn4lHOKNZD6Owo1e3vGSUg=
X-Received: by 2002:aca:d50f:: with SMTP id m15mr19429336oig.54.1589197882858; 
 Mon, 11 May 2020 04:51:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-2-ricardo.canuelo@collabora.com>
In-Reply-To: <20200511110611.3142-2-ricardo.canuelo@collabora.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 May 2020 13:51:10 +0200
Message-ID: <CAMuHMdU8++E88TSWd1KJMd_9JzbTY9EjPpCD_zP7r+Tq++h4aw@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] arm64: dts: renesas: make hdmi encoder nodes
 compliant with DT bindings
To: =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_045124_218699_F3CE9983 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMTEsIDIwMjAgYXQgMTowNiBQTSBSaWNhcmRvIENhw7F1ZWxvCjxyaWNhcmRv
LmNhbnVlbG9AY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gU21hbGwgZml4ZXMgdG8gbWFrZSB0aGVz
ZSBEVHMgY29tcGxpYW50IHdpdGggdGhlIGFkaSxhZHY3NTExdyBiaW5kaW5nLgo+Cj4gcjhhNzc5
NzAtZWFnbGUuZHRzLAo+IHI4YTc3OTcwLXYzbXNrLmR0cywKPiByOGE3Nzk4MC1jb25kb3IuZHRz
LAo+IHI4YTc3OTgwLXYzaHNrLmR0cywKPiByOGE3Nzk5MC1lYmlzdS5kdHM6Cj4gICByZW1vdmUg
dGhlIGFkaSxpbnB1dC1zdHlsZSBhbmQgYWRpLGlucHV0LWp1c3RpZmljYXRpb24gcHJvcGVydGll
cy4KPgo+IHI4YTc3OTk1LWRyYWFrLmR0czoKPiAgIFJlb3JkZXIgdGhlIEkyQyBzbGF2ZSBhZGRy
ZXNzZXMgb2YgdGhlIGhkbWktZW5jb2RlckAzOSBub2RlIGFuZCByZW1vdmUKPiAgIHRoZSBhZGks
aW5wdXQtc3R5bGUgYW5kIGFkaSxpbnB1dC1qdXN0aWZpY2F0aW9uIHByb3BlcnRpZXMuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxyaWNhcmRvLmNhbnVlbG9AY29sbGFib3Jh
LmNvbT4KClJldmlld2VkLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xp
ZGVyLmJlPgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVy
dAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25k
IGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMg
d2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJ
J20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21l
dGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVz
IFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
