Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0651CD8F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oe4GxE/cGomzb6NqecVBXaRHWQOzHO/3Qmj8tMUvVWk=; b=q3FW5tlXz1+aUB
	Gnmhc3PLmqI7m6yJiUimWhQ7fIyWkEuLzuOZ054Mh5q3Vfnmpgri5K+mF4hH4mr6cksyulxdN86Q+
	ZGoIbEgQ1nEIaznxnrv/de5puAHoni5r33dRBBmhWshz5Wn7oy98kAqUJTzwDey8QqXEawBFyp3Ev
	Uj2WWs/C3ZzsI6ZdkyNC7qmyRsysQJxZn3dde74Cyt8tN0DYGl1xttQ9d6x4jjfr0Tv0QB6GhUw2I
	wybndPqpluxp577LkdN2jlTLX73b+75qfL9ClOXHZE08IUkRbYbENEAcc/M5u7SoPq3rom9zmw9wW
	7dSK/3Cgh3xkejexsOGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6zi-0001mC-6I; Mon, 11 May 2020 11:53:14 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6z8-0001TD-MO
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:52:40 +0000
Received: by mail-ot1-f68.google.com with SMTP id j4so7253967otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:52:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3SLivmoLEe5zdWLeW28Uage4wLxjeHXZBhIuDc+h5/Q=;
 b=mboAtl1j0ZFDUXWcgBqzHJOKvFkgDJJ6jSo+UWcOgt/R1oZKstGhEtttCL/BcRtk4R
 7VuUoYNlUHFJEMzfdRIfFBOJ6IUHGAmdVJaGDEanAtloom7paqqS+khwlWc4VZr/dX8+
 +t8MxqzOLogsdPIutvAu/RYKlUKsI9H0ymrdltCoK1yMt0GOGQK1OwddST6GmA1vslLU
 xF3qMGBqYQiUg3/r6A5ns881q5i/VOiUij1P4s8OgjdWLWwa8VSzNKu/rrWYk6FIUaVu
 ZcpM8zgQKFtkHUUATFjGQpoM1oSVX1KWHBz/P/RyAPJTL29aLEwqdfqgucSnVUyBnr/9
 XSKw==
X-Gm-Message-State: AGi0PuYOQD9qF6DQP2HTHvjZwXmuikFkXDKNGc7TdzIe1KA8RGNFvOTB
 thVrXy4elncKr7kjiNjWIe3mEqtvSARXn8Su+zQ=
X-Google-Smtp-Source: APiQypI4+FXDKpb/c9jajM3DN3Ek8OlUzwUew05RswarCvWnvBS55EVKeAu6kK8PN2MakdlVtuYA29onwizfCx9aG+c=
X-Received: by 2002:a9d:564:: with SMTP id 91mr12335404otw.250.1589197957711; 
 Mon, 11 May 2020 04:52:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-6-ricardo.canuelo@collabora.com>
In-Reply-To: <20200511110611.3142-6-ricardo.canuelo@collabora.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 May 2020 13:52:16 +0200
Message-ID: <CAMuHMdX=3O33nqPGNr+nU874w_FJ8fgiKnkxKfqq8NR8wd+iYA@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] ARM: dts: iwg20d-q7-dbcm-ca: remove unneeded
 properties in hdmi@39
To: =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_045238_736243_01EAC239 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
LmNhbnVlbG9AY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gUmVtb3ZlIHRoZSBhZGksaW5wdXQtc3R5
bGUgYW5kIGFkaSxpbnB1dC1qdXN0aWZpY2F0aW9uIHByb3BlcnRpZXMgb2YKPiBoZG1pQDM5IHRv
IG1ha2UgaXQgY29tcGxpYW50IHdpdGggdGhlICJhZGksYWR2NzUxMXciIERUIGJpbmRpbmcuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxyaWNhcmRvLmNhbnVlbG9AY29sbGFi
b3JhLmNvbT4KClJldmlld2VkLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNA
Z2xpZGVyLmJlPgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBH
ZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5
b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlv
bnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hl
biBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBz
b21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExp
bnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
