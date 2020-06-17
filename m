Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F3D1FD73F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DGn70xco3hJ4fvgbFrTChpXfAhAEN/0EvGqQVLcQIKE=; b=rmIkoh46G7UODEqw32vGBYH5Sk
	c/p+eyma85fiTUfGA7HTJL6URAp1BXa9zJXVemuKbqbwNQ4ONZokZFU3MrNNX7wbXYDhS+qDEqYGx
	BAgqy2AKge/Aa3BfZ0FFJ9IULsTEyqF1OyNEUqTMYJ3xzA9tOZqbOV1OlZJPvH8lwgD9PcBDQ0Bnc
	ucyYyDGgDIF6kohx9ckBrFe6rcmerq7VeYiUIXVCENyeNpZzQdlfQgnQPC6uwHSce1pqLahEH7MiP
	SqSU4KT6Ta2K5BnUsLLs5Vcu6+rk9R7Q56+MLLgL3XZMJ6ccZG0B0gMgF60z2L6pvgnomJlGY0Wmo
	SHAA1g0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfcj-000577-St; Wed, 17 Jun 2020 21:29:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfcY-00056S-L0
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:29:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id x22so1774950pfn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=zv1INp4X/nxFJAvPT53tnYt0FwQawRZpMAzUGoSP1NI=;
 b=BMDCgbzQYArV+44ej/j29mTlKDViF0acMLXp4NcBjjN7T7whOMUpk3Q8OTMPKvlO87
 qfqnGIydMsBHtnsznOqjXk28Y010G9ZzC0w6yUfXAUyb38bySvpUzPmSDfE12HBo4QgB
 2NhqCguOyCxLT5mCcZktAqSlnej6TPpZleRX5WvbyKkZSed/GI/zXyrjkhEQr84CcsG3
 vDd8Vbo4/KvMRzI7oKY8cT+ewqfkBVUrH0kskbDEZ4qtl849JKzLyy/q6roCNkmMmo0d
 lEysXeDvxkDXswcE3ajOLx1zOich96vPU3igibDmf+dEVwrM6iIxxFVcjRluA/oNO0BF
 ym6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zv1INp4X/nxFJAvPT53tnYt0FwQawRZpMAzUGoSP1NI=;
 b=i4cuSJ09ffDQoIdiUrSi7hwz8FPk22Phbn1nUxbFeK96WSvNHran/Iddli93Y55efZ
 W/jKHavH05WYogNB2epChJdLTXrG3aWXKHgRDAw4QrCPDwbW7QbeGCqNLdnTTfYFiXaj
 IAy9fpC2dfufpyPNPXdPfp28ILjfXEC3GvFkNI/7v9iV/KSngSTFDA9dAPbA8jrHRrfm
 RRvoBdzTB2DSjY6rXkqSn9ht1KFS6gfcslX2Dmxm4ay4V4XxEWVmh41/rf3ZzDkNDk81
 fGxTkjr2R/3ebHiWTdB7z3p5pekZvximIPFcQF0B6zQyOAcDb27er2vPoGIyO/EGG0Qa
 A9rw==
X-Gm-Message-State: AOAM532DtQ/1fSlm/VkByA4pS1KE4fBcL9viidlD2K98cYIPsQBmzzRc
 OMuxzNwTfvss2M0RG/F2sk/TEgpd
X-Google-Smtp-Source: ABdhPJywKZd86vCKkZ9ihsL3xoKPhBz8XZ3r87sZB8iFEQjuRVnd1JSIUSMgFVRP+At+cRlQhqxuMg==
X-Received: by 2002:a63:f711:: with SMTP id x17mr675727pgh.79.1592429360392;
 Wed, 17 Jun 2020 14:29:20 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e143sm741832pfh.42.2020.06.17.14.29.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:29:19 -0700 (PDT)
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 p.zabel@pengutronix.de, krzk@kernel.org, gregkh@linuxfoundation.org,
 alcooperx@gmail.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200616184542.3504965-1-noltari@gmail.com>
 <20200616184542.3504965-2-noltari@gmail.com>
 <7b82a18b-2939-9516-d68d-ddac41014da1@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <e37785fc-8d3e-bc7f-bd03-bb6ec0a6843f@gmail.com>
Date: Wed, 17 Jun 2020 14:29:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <7b82a18b-2939-9516-d68d-ddac41014da1@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_142922_709687_59FED0A7 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

CgpPbiA2LzE3LzIwMjAgMjoyMCBQTSwgRmxvcmlhbiBGYWluZWxsaSB3cm90ZToKPiAKPiAKPiBP
biA2LzE2LzIwMjAgMTE6NDUgQU0sIMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyB3cm90ZToKPj4g
RG9jdW1lbnQgQkNNNjN4eCBVU0JIIFBIWSBiaW5kaW5ncy4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
w4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KPiAKPiAKPiAKPiBT
aW5jZSB0aGUgVVNCIFBIWSBzdXBwb3J0cyBib3RoIHJvbGVzIChob3N0IGFuZCBkZXZpY2UpIG9u
IGEgbGFyZ2UKPiBudW1iZXIgb2YgU29DcywgSSB3b3VsZCBqdXN0IHJlbW92ZSAiSCIgZnJvbSB0
aGUgc3ViamVjdC9iaW5kaW5nL25hbWUKPiBhY2NvcmRpbmdseS4gV2l0aCB0aGF0OgoKV2VsbCwg
dGhlIHJlZ2lzdGVyIGlzIGluZGVlZCBuYW1lZCBVU0JILCBzbyB0aGUgbmFtZSBjYW4gc3RheSBh
cy1pcywKdGhpcyBpcyBmaW5lLCB0aGFua3MhCi0tIApGbG9yaWFuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
