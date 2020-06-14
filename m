Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8ED1F86CD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 06:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lsDSBQjueXOyOxodD70LYZtD0pOrnVsIARhhrvWZBi4=; b=igqF3ogiczEJ+VDghRZPK6q6cq
	ccdTStSiHDWSp3wTu1sfJ2ATcrTZcNwJ2lnf2x30q6ItilTy9xle9vNgB+6jhnS7oKGsO2miDdu92
	vaYONjEJWipUpahv+I6WiV8oLF0qe6AIKMMk8n1t06k2bvMPRKC37PakQEpZk4Ozj7gdGeiTpOure
	qE47z3JfMpSByhKJoAjjUQhOJBb2Mf1gVij3lJRZ2c8YqaheX+4N5oUfhqyCR/3KiS7MD5N2RAD8c
	6xbfV+3rJXOog8y3HgSBD6gdEm/Nd4Rt2V7IVWCGOG+HEz+55ou+Mwosi60jLUOxOqtWrruf+/c10
	x4aEePRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkKXM-00008G-OB; Sun, 14 Jun 2020 04:46:28 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkKX3-000075-Ne
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 04:46:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh7so5426371plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=5w0Ptkm8JDLtwWEyeAb5D9HFETqA5YXjnTeDKjEageI=;
 b=HrvDVJb4BKUvi/kxM5uMN40AJAt2chnBipHT+iDPUQ9sJ/uBgSdyxCdfyZM8AV3uNr
 9GbPBunGD5mN4Ed8lrseSLY+hUdXbvO9zjRhthqrZ4mLNN4mgP7bv8Um5ayvFhEZQaOY
 XCjypnJs/qgX/ux6Wy7H32nOALnp2ZKRtmvspZp/SQfFj23MCrJMPaf8pC3+SiYPqHuQ
 7wpRIQIZZiN94i85JyzxVioscQkJqj/4AYBczZdU5BiK6/A3Hd9Xoe60WYQrTazVQgrI
 /lwuL7irPtAwWzDesbnSzRBUy2wxFx9Q4DxeoQg+ItiOMHldrG+Hj6ec0yKvVe9Om1XV
 iEwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5w0Ptkm8JDLtwWEyeAb5D9HFETqA5YXjnTeDKjEageI=;
 b=fj54a1P/2dgFyNAl21L0vJy1zLie9iljTufXlqBeIrp4GnBhRCPnter1arGzJpAa8u
 HgpjOcuYQJXUtcEFtRslX+oLs/IgVWWKDAaYZ9VjkpTvYkObUF4L9XPJZzXUXfx/6Tye
 6WUVoFcOrNmoRUOQrXBKKywBPGLgXdToFj+ksxk1rUFop0xax1FFyoQ5uFUsN5GNhIaf
 DhceaZATY5cq/k9o3VWsqMVvGrNh6vnvZdMboFDuxRzZB/cxmuGCFzP7u6f9AmjYElWG
 +/bp3UasA9XOp0dIeaHpzQTcwJOU0W+sz44JuidNdA5aVKsGHuJ7fxry/e7tUeQjgjqk
 UmYg==
X-Gm-Message-State: AOAM531b6S8RXGr9wHrmk8ZCkMMxvGbB20W0MJ1QrxF+j9iZppTgRDUd
 9mgmlbh1Yz+uxb6ur+J6jIZQNkhc
X-Google-Smtp-Source: ABdhPJwYCh4fyMcyTTI5dN+w4zq8nHcsRMR3cegFAe7BgLZMQBfHbzV7Fm1+9KcDXKkpRUc8UUXEkg==
X-Received: by 2002:a17:902:704a:: with SMTP id
 h10mr17002044plt.85.1592109968571; 
 Sat, 13 Jun 2020 21:46:08 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 y26sm10346769pff.26.2020.06.13.21.46.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 13 Jun 2020 21:46:07 -0700 (PDT)
Subject: Re: [PATCH v4 3/9] mips: bmips: add BCM6362 power domain definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
 <20200613082140.2009461-4-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a8ee054d-26d7-d1c3-bb1b-c8f88d333f1d@gmail.com>
Date: Sat, 13 Jun 2020 21:46:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200613082140.2009461-4-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_214609_808221_4E756ED5 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzEzLzIwMjAgMToyMSBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEJDTTYzNjIgU29DcyBoYXZlIGEgcG93ZXIgZG9tYWluIGNvbnRyb2xsZXIgdG8gZW5hYmxlL2Rp
c2FibGUgY2VydGFpbgo+IGNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29t
PgoKUmV2aWV3ZWQtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPEYuZmFpbmVsbGlAZ21haWwuY29tPgot
LSAKRmxvcmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
