Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A25CD8FD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 21:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YCyzoF/wGdrxPlpns+rBfOBicwDuSwiVv8dXyEdly8U=; b=dPJZW2B4eeRcpIlp6HMnW9hfg
	3EUCy8pRBZJlMpS8UHq86QWg3h1Vl090/eIdxTHGc4eESs8bHJuFM0aIygUnbWoe5GVdtKX6J/guO
	c0qnyicUgb6fqUTmqwR+/fdmn267gMvnYeDCPII7Fx4NzWVVNougmzDnuG9NpffhDgXW57ah+BTV6
	eUfeORoufjliX88yJlVg3n8g1MgushQdNG82i4ja78nvsRZISe6I9Y3cqlnHy5iNGgtG5BOhkgPzP
	0LZpwLswKtCtNxgUi0Mlq3MMScXMs7zkc+PgNGtbXOTmaubMkQOUs8Tnbyn1PFu/McfWgC4Wbc00l
	yedTxXgVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHCY5-0001F4-VT; Sun, 06 Oct 2019 19:50:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHCXu-0001E8-4d; Sun, 06 Oct 2019 19:50:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id o18so12702792wrv.13;
 Sun, 06 Oct 2019 12:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=SF3ve2/BTUkIULmgsBwIXtaoivMNXD9/DFfQmDFlSVM=;
 b=WCb+t9jwEYGZQSJkSVHLE8EFck+4SgZCH15o1AjWwGVAVttdTdlgxF+XKZYy991Efi
 2l62TnJxPwv5rVodwo1DxxTQq8u4Ha/igbJxxJkqp/FTvZSJIzJa15SlpF0jtT+ihlrI
 uxlujJ28cUf4Yk33siXsvvLBdSWz3kB2EVfeqyio4GxAVNllD38S2PSKwBNWfRzU82yP
 nEJSKnl2roA1Kf5gYoLkvzIDo09z2ufMc6CUCUfYaXoiYDqJXAuXAc8+S9EMfDx++xLi
 BYPNjy80Igjw7V2WjmPeRSxmGb7CeaTe25IXDwaC5kvEqCqMdNT7h5ywWBUw05jZtWHH
 WF6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=SF3ve2/BTUkIULmgsBwIXtaoivMNXD9/DFfQmDFlSVM=;
 b=JuaPycVLHUjiHls1UDWD5MOKqJZkexsyv5K3xR3BV+jNP9pPRcRuQbHQEFMNXoX499
 zHb4wqjo8zR5lJZGmkixIbz5Xe9HFw3G/SVqyDtU0QeWCLgC57EUAe8YSb2cWKk3YeCK
 7DYCEuTh0j/fDMTwST4eaT3ntXd0ie3TpTc+NWqpEbLkaRNmbg2l+7QbaKC+N41Hpun7
 F6v1cshk5TfhtOVSRp2JMrkTFZhb5REsnuYWgnu8zlbb3WvzeBM5BMjC9q++nOBUjYk6
 FJj5TsfDUB7mm3M35uGUNakpMpV9N4Aro1tibcA3OubihDDuBJy228tyR3jNExnEmUjI
 UdLA==
X-Gm-Message-State: APjAAAVzJVUhLPtSlFeRRXO/0Err5h8EFlRj8vFx59RtndqWd1qk2sxG
 qkbLZbOfiHbq+YUuyq28U68=
X-Google-Smtp-Source: APXvYqxATYtyWsBwj3st87+ddDby4qJ5JPK9YSeU7U9c5UyOyXXi8fOFenqo8kZijK2LBkrzcVLj0A==
X-Received: by 2002:a5d:63cb:: with SMTP id c11mr17998797wrw.281.1570391419078; 
 Sun, 06 Oct 2019 12:50:19 -0700 (PDT)
Received: from localhost ([94.73.41.211])
 by smtp.gmail.com with ESMTPSA id u10sm13213035wmm.0.2019.10.06.12.50.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 12:50:18 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Vivek Unune <npcomplete13@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix usb-c on Hugsun X99 TV Box
Date: Sun, 06 Oct 2019 21:50:16 +0200
MIME-Version: 1.0
Message-ID: <4cb2b781-e177-4008-86ae-a9108bd303e4@gmail.com>
In-Reply-To: <20191005005200.GA11418@vivek-desktop>
References: <20190929032230.24628-1-npcomplete13@gmail.com>
 <54c67ca8-8428-48ee-9a96-e1216ba02839@gmail.com>
 <20190929234615.GA5355@vivek-desktop> <2223294.9I8gkMH88G@phil>
 <20191005005200.GA11418@vivek-desktop>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_125022_310692_317BD4B4 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Felipe Balbi <felipe.balbi@linux.intel.com>,
 Felipe Balbi <balbi@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, akash@openedev.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0dXJkYXksIE9jdG9iZXIgNSwgMjAxOSAyOjUyOjAwIEFNIENFU1QsIFZpdmVrIFVudW5l
IHdyb3RlOgo+IE9uIEZyaSwgT2N0IDA0LCAyMDE5IGF0IDExOjQ1OjA4UE0gKzAyMDAsIEhlaWtv
IFN0dWVibmVyIHdyb3RlOgo+PiBIaSBWaXZlaywKPj4gCj4+IEFtIE1vbnRhZywgMzAuIFNlcHRl
bWJlciAyMDE5LCAwMTo0NjoxNSBDRVNUIHNjaHJpZWIgVml2ZWsgVW51bmU6IC4uLgo+Cj4gSGkg
SGVpa28sCj4KPiBJIHRlc3RlZCB0aGUgYzA5YjczY2YgcGF0Y2ggd2l0aG91dCBtb2RpZnlpbmcg
ZXhzaXN0aW5nIGR0cy4gSSBjYW4gY29uZmlybQo+IHRoYXQgdGhhdCBwYXRjaCBkb2Vzbid0IHdv
cmsgZm9yIG1lLiBObyB1c2ItYyBkZXZpY2VzIHdlcmUgcmVjb2duaXplZC4KPgo+IFZpY2Vuw6cg
LSB3ZXJlIHlvdSBhYmxlIHRvIHRlc3QgaXQ/CgpJIGNhbiBhbHNvIGNvbmZpcm0gdGhhdAoKYzA5
YjczY2ZhYzJhOTMxN2YxMTA0MTY5MDQ1YzUxOWM2MDIxYWExZAp1c2I6IGR3YzM6IGRvbid0IHNl
dCBnYWRnZXQtPmlzX290ZyBmbGFnCgphbG9uZSBkb2VzIG5vdCBmaXggdGhlIGlzc3VlLgoKZTFk
OTE0OWU4Mzg5ZjE2OTBjZGQ0ZTQwNTY3NjZkZDI2NDg4YTBmZQphcm02NDogZHRzOiByb2NrY2hp
cDogRml4IFVTQjMgVHlwZS1DIG9uIHJrMzM5OS1zYXBwaGlyZQoKaXMgc3RpbGwgcmVxdWlyZWQg
Zm9yIHRoZSBVU0ItQyB0byB3b3JrIG9uIHRoZSBTYXBwaGlyZSBib2FyZC4KClJlZ2FyZHMsCiAg
VmljZW7Dpy4KCj4gQXMgc29vbiBhcyBJIGFwcGx5IGR0cyBwYXRjaCwgdXNiLWMgZGV2aWNlcyBh
cmUgcmVjb2duaXplZC4KPgo+IFRoYW5rcywKPgo+IFZpdmVrCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
