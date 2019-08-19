Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D118094D94
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzxSAt2rsc3N5GzolFrOkWaAeVMoq5OutMSZ8ceWCqs=; b=r+m69W7IEqmftR
	yai+DCT7yX2cr31XS34IoLH22Qo1v4Mx8lUB7XcVQCi9TxdTK3QpdIHJcgyVNMHD1mS+gjitwFsXW
	PLvIjDzHbtpBwfVPmbJrPFUHznFvheUDanAfhl+zm1KF4DNkrjdHrynYsLbSG/p60Y5TNLQn8Rrud
	+29VMniAd4EflQlJ/wDqtg1WGlZ89gUWWgXAxcnIZBfOa1Pzzj/P9zY6i56mILuzq3lTxwquz6jw4
	g6wRCTafwMb5nMXHUlo+7K++hbingIzJ1NnGAIzgEvoAgt5yXmPf42WkjT9WV45bcbv8Tzlm0A0CY
	ZHd3080+ZZDgwDliVVzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzn1j-0000IH-Qz; Mon, 19 Aug 2019 19:09:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzn1Q-0000HK-2l
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:08:57 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4DC0222CE8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 19:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566241731;
 bh=hKKokWvdTtt0L3+3PBxynmZ/1K2qD5A3ZQsLufZc6ZQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=L4OGbR0aGXZZqfOp99j+gd9RtdmR4nlWplkz/oWA3hlJx+nA1RFULQ/U+Tr2SSjdx
 +cgFSi5pcy7TI/8yLHccMX+ZNQcxJ5UqqAdVvLjjkFb8VPjxUXsvlsgZgDJCESZ2X9
 omDajPMk5AOqyC3V9KwgswBoHmmUDjKtceLS6oOM=
Received: by mail-qt1-f182.google.com with SMTP id v38so3144030qtb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 12:08:51 -0700 (PDT)
X-Gm-Message-State: APjAAAUivgCfHSYVmkF6TlKFCi5TMg44bTCO9zddDuLwpsLRxrbpQjaE
 1u5N4Mel0FvwXOgO/6u76EhSVzi9ti9m80KEJA==
X-Google-Smtp-Source: APXvYqxgXllJEuAzpab2Jc5x2K/U/N2VgZkKV3wmLeSwKMMzAAfB85VbJUzmHGfPmvfgL/ruAuKMJJYkju2ElceB4ns=
X-Received: by 2002:ad4:4050:: with SMTP id r16mr11993870qvp.200.1566241730428; 
 Mon, 19 Aug 2019 12:08:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190819172606.6410-1-dafna.hirschfeld@collabora.com>
 <20190819172606.6410-2-dafna.hirschfeld@collabora.com>
In-Reply-To: <20190819172606.6410-2-dafna.hirschfeld@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 19 Aug 2019 14:08:39 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJx6pTw7Pr=7f0jkC81JF+EDkyhHrvFehSWZV=0wy+YXQ@mail.gmail.com>
Message-ID: <CAL_JsqJx6pTw7Pr=7f0jkC81JF+EDkyhHrvFehSWZV=0wy+YXQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: imx: add imx8mq nitrogen support
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_120856_109755_5824916F 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 Gary Bisson <gary.bisson@boundarydevices.com>,
 Sascha Hauer <kernel@pengutronix.de>, kernel@collabora.com,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMTksIDIwMTkgYXQgMTI6MjYgUE0gRGFmbmEgSGlyc2NoZmVsZAo8ZGFmbmEu
aGlyc2NoZmVsZEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEZyb206IEdhcnkgQmlzc29uIDxn
YXJ5LmJpc3NvbkBib3VuZGFyeWRldmljZXMuY29tPgo+Cj4gVGhlIE5pdHJvZ2VuOE0gaXMgYW4g
QVJNIGJhc2VkIHNpbmdsZSBib2FyZCBjb21wdXRlciAoU0JDKQo+IGRlc2lnbmVkIHRvIGxldmVy
YWdlIHRoZSBmdWxsIGNhcGFiaWxpdGllcyBvZiBOWFDigJlzIGkuTVg4TQo+IFF1YWQgcHJvY2Vz
c29yLgo+Cj4gU2lnbmVkLW9mZi1ieTogR2FyeSBCaXNzb24gPGdhcnkuYmlzc29uQGJvdW5kYXJ5
ZGV2aWNlcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVHJveSBLaXNreSA8dHJveS5raXNreUBib3Vu
ZGFyeWRldmljZXMuY29tPgo+IFtEYWZuYTogcG9ydGluZyB2ZW5kb3IncyBjb2RlIHRvIG1haW5s
aW5lXQo+IFNpZ25lZC1vZmYtYnk6IERhZm5hIEhpcnNjaGZlbGQgPGRhZm5hLmhpcnNjaGZlbGRA
Y29sbGFib3JhLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2FybS9mc2wueWFtbCB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKClBs
ZWFzZSBhZGQgYWNrcy9yZXZpZXdlZC1ieXMgd2hlbiBwb3N0aW5nIG5ldyB2ZXJzaW9ucy4KClJv
YgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
