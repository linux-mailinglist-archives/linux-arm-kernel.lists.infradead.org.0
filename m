Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3420138E04
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1ro11ycWUcKhjoqOqvLq7Yc11kRIJmosbKI6ln9uMY=; b=OGUlI6bR3DF8kT
	tLteaFL4mq6iw6rQoVkgknn2ow3xp9bRRUPdU2I6N5yu3rWFin3FvmebO7FU+XM5TBafNqrPGSmCV
	ZRKgtR3D7zBW1oTjqGwq7FUV1ia2iABDHM7ISsFeZwBbUpt1RiF/7pa//b4kP37lDQDXB+svVli4n
	8YCEIzkXX29apTiBJNExINgBkTfoWNfx4vMvzK0cKnNx0N1ASoInXsPYxA4EzRRSt8VT+0ZbWV8BR
	R9T5TBFNSc6VHnqZ7HHVswj5HuXQyf4v9QpW5YPROGEwW6L9ASQ3Yb53VZt2DkMk2S2wQSCL8VXp7
	vLJ5VtuKlarKvwYAh18A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwEy-00081c-5t; Mon, 13 Jan 2020 09:42:32 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwEi-0007yp-4u; Mon, 13 Jan 2020 09:42:17 +0000
Received: by mail-ed1-x543.google.com with SMTP id e10so7860942edv.9;
 Mon, 13 Jan 2020 01:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=U7KeLP59PevGGC5Z3wB8REEwHPKJRQN3w5hiDB2hOxQ=;
 b=gkdIVs2lFneKxILRe08ZFuatX83Y1qz9EEbVaioH/dqogaaCCdsTaKHQ+JHTS3srR0
 F2mHpMbTne+ScQQODsLLcDSztAY3RlD3ghO5cSKu6JhHjDUP0evfCBmHnx+sHdPYehLT
 fhE8+ad2EaaexkZhkPJenTbckLlM9La2xTJvRtcbhratmc6w7+iKbpp5cQuHiILJ2BG5
 rcNMTHI46v9qSBc77zu1QQX+Gxhm6sq8Pmv4X4Ky6xew543BRMrEDsZ1e+ns3w58ZE+Z
 G0fSFsa9y6c3vxWrWSK9c3OlJ+Y/2MGU0BafdEHzo839WVJuRNU+wFRCJGIReeY89RKc
 eLYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=U7KeLP59PevGGC5Z3wB8REEwHPKJRQN3w5hiDB2hOxQ=;
 b=erED3pNcmuDK3VBI6uO1898QZEkIOs3kfFrfv8oHYKI+xUCsje5bK/v2bDqm9+CHaX
 X6NYzyfgwvu3kUQIoIABEGWuxWAJfJW8TYYd4DaNW07+bCrE1UTVNpMwenKSi1t6gfCo
 46LgEjLH/1iAZfr6CnHYQkOQQLHR4lkgoD12Mk7E6SX2P82rDlyUEyYEKbWxz4eBApHl
 mHuTdTWvnKeHnpMMtbirNz7LcqdzCqk8wuCaEj6QvHjICjFPOaDLVHUKL1+Dj0X6YMuX
 WjLcVJUlMGMMMq3XPuNfxRKbnIglH/4JfO61KElNvTFIv0d/FLSuuGvmDUPgAUsy0DnS
 2Mww==
X-Gm-Message-State: APjAAAWhSCXHSPayRkdhKGI2VoNSDct61DXuPHYaQzSGW9t2yR8MpIhv
 s1pbE6dCOL+lxqa8BXN/DE5O2f1aYch0hMrqdRg=
X-Google-Smtp-Source: APXvYqy8SM8Y+cR4BrF+oboBLfO9xNOTU4QgWP76WoRWA5nmy26BCRXzTEgIWDK02oI7osEZsjrKqq2/XWN0/Rs4LNQ=
X-Received: by 2002:a05:6402:1742:: with SMTP id
 v2mr16594732edx.171.1578908534048; 
 Mon, 13 Jan 2020 01:42:14 -0800 (PST)
MIME-Version: 1.0
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <20191230143028.27313-6-alobakin@dlink.ru>
 <ee6f83fd-edf4-5a98-9868-4cbe9e226b9b@gmail.com>
 <ed0ad0246c95a9ee87352d8ddbf0d4a1@dlink.ru>
In-Reply-To: <ed0ad0246c95a9ee87352d8ddbf0d4a1@dlink.ru>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Mon, 13 Jan 2020 11:42:03 +0200
Message-ID: <CA+h21hoSoZT+ieaOu8N=MCSqkzey0L6HeoXSyLtHjZztT0S9ug@mail.gmail.com>
Subject: Re: [PATCH RFC net-next 05/19] net: dsa: tag_ar9331: add GRO callbacks
To: Alexander Lobakin <alobakin@dlink.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_014216_220123_53B6AC33 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Matteo Croce <mcroce@redhat.com>,
 Edward Cree <ecree@solarflare.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@mellanox.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 "David S. Miller" <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxleGFuZGVyLAoKT24gTW9uLCAxMyBKYW4gMjAyMCBhdCAxMToyMiwgQWxleGFuZGVyIExv
YmFraW4gPGFsb2Jha2luQGRsaW5rLnJ1PiB3cm90ZToKPgo+IENQVSBwb3J0cyBjYW4ndCBiZSBi
cmlkZ2VkIGFueXdheQo+Cj4gUmVnYXJkcywKPiDhmrcg4ZuWIOGaoiDhmqYg4ZqgIOGasQoKVGhl
IGZhY3QgdGhhdCBDUFUgcG9ydHMgY2FuJ3QgYmUgYnJpZGdlZCBpcyBhbHJlYWR5IG5vdCBpZGVh
bC4KT25lIGNhbiBoYXZlIGEgRFNBIHN3aXRjaCB3aXRoIGNhc2NhZGVkIHN3aXRjaGVzIG9uIGVh
Y2ggcG9ydCwgc28gaXQKYWN0cyBsaWtlIE4gRFNBIG1hc3RlcnMgKG5vdCBhcyBEU0EgbGlua3Ms
IHNpbmNlIHRoZSB0YWdnZXJzIGFyZQppbmNvbXBhdGlibGUpLCB3aXRoIGVhY2ggc3dpdGNoIGZv
cm1pbmcgaXRzIG93biB0cmVlLiBJdCBpcyBkZXNpcmFibGUKdGhhdCB0aGUgcG9ydHMgb2YgdGhl
IERTQSBzd2l0Y2ggb24gdG9wIGFyZSBicmlkZ2VkLCBzbyB0aGF0CmZvcndhcmRpbmcgYmV0d2Vl
biBjYXNjYWRlZCBzd2l0Y2hlcyBkb2VzIG5vdCBwYXNzIHRocm91Z2ggdGhlIENQVS4KCi1WbGFk
aW1pcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
