Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2391FD70A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=buC8MQmU39o15wVSgRZ972OWcmPSpQ+I6R/fOHGdijI=; b=g5HsAGz950LXCJwqBPBMNuCj6K
	u5bu2V8UsWGsUHfbBS2WoSrfhtuRJh6uyLZuK6MXjpsissW7+PD6R8Uq7QxWB2ekkHBifUrZz3O/s
	bj0MaMIofw0vrr4XwQAv3KB5TRUadE+B+xa9wl/RWV72FJq3uEG+EDR4zlFIZ1r/tGnePDiMbbuOU
	z0xujVA86U+hpAIIIoBO9wQweae4zsOUFQgoXL64MUxSci0C2l6dNuf+gNXYawZ/ErXV7WMj+CfqB
	5GW4s7x5RkasH8rnaXcQ8p47QwYoQcJ69E6ADWGIxnwSBUO1pXKLxPSPkq1UtviUEwSs4eAYt0g2t
	lha69tdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfUJ-00016E-8s; Wed, 17 Jun 2020 21:20:51 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfUB-00015v-EF
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:20:44 +0000
Received: by mail-pg1-x541.google.com with SMTP id e18so1895367pgn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=NohMyegEt9RgGZs2UzoxJxqN0gmHTgaywhB0Xzu/WmU=;
 b=B45A1JqMbdGfNkFOLEr80Gd4T4cJHGZpD46j+2UPvaUhAxUwCPVP6oDMxAHHZdG0PP
 NBSaOy58ayTiZ4z2IKWdPtBY/cMv1hW47Zb/k1+EDN//5NXSVRkRaz2k07Js4raYp3R7
 qJXH4XaCod9zMWVAX4yu8DTNZvZIk8PFGvsKulS5pwpjkMcaXtBweTxC0gHUQS0QGwQb
 9sGYmn2QrwjjB7oUm6hw7CYH4f5Ib1tZpcTeDldhHnuHlZIX0c4MxOx6jBmNp9uvr5BS
 TwB3vBHW2H6ANhuqu0dPKqDfwcqLb56iaMALoRy8H1jb/N103Vxx6BG4lgQ7yzL1ZGM9
 GzVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NohMyegEt9RgGZs2UzoxJxqN0gmHTgaywhB0Xzu/WmU=;
 b=ATLnxB2S5HLlzubvCb9wfcjmVtezQuSmbTI+RHyzI9+2FAOwGiTon0IAvHrpM6qFti
 04gPF6zzUSoMFrOuWwKZgfEVN2r7iQJMNyJNKDTa1L1IOVNUIf5EM3KqfFww2y7Etmiv
 WkKmzB49XzAzVehbyZJmbMRbh/OZbavU8XWdwSX27d94OErNA5icX4SO/N/iNEBqnjqE
 zzs0so8rdtR0lcykAOXNH6B0YOMdCNAoTsX5oJ91QLXbpbVV/oklh+SU74di5xUYhYio
 ZwEhTEpe1z+E6TVh7l95su1NoPKqBVXu6IG1vfGO03osRG8WU4AUFhDMl71TYJ5+RxDy
 SdFQ==
X-Gm-Message-State: AOAM5325yE1xXON5lFvtCoQfNYgMVTf1zht/IrYfiat0qsTkYyFq5HUI
 /YjMyD2pdY4lcWUGpxSBUG6X28RD
X-Google-Smtp-Source: ABdhPJxQCCLyJYuEEt75M86xwUznb39t3XLVtOTwq0j0vZiNuzlxohhOfMK2hQu9uIG/YI5GnyoJzg==
X-Received: by 2002:a62:1654:: with SMTP id 81mr628850pfw.137.1592428841583;
 Wed, 17 Jun 2020 14:20:41 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id f191sm702000pfa.82.2020.06.17.14.20.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:20:40 -0700 (PDT)
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200616184542.3504965-1-noltari@gmail.com>
 <20200616184542.3504965-2-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <7b82a18b-2939-9516-d68d-ddac41014da1@gmail.com>
Date: Wed, 17 Jun 2020 14:20:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616184542.3504965-2-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_142043_495000_3CAF34AE 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

CgpPbiA2LzE2LzIwMjAgMTE6NDUgQU0sIMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyB3cm90ZToK
PiBEb2N1bWVudCBCQ002M3h4IFVTQkggUEhZIGJpbmRpbmdzLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CgoKClNpbmNlIHRo
ZSBVU0IgUEhZIHN1cHBvcnRzIGJvdGggcm9sZXMgKGhvc3QgYW5kIGRldmljZSkgb24gYSBsYXJn
ZQpudW1iZXIgb2YgU29DcywgSSB3b3VsZCBqdXN0IHJlbW92ZSAiSCIgZnJvbSB0aGUgc3ViamVj
dC9iaW5kaW5nL25hbWUKYWNjb3JkaW5nbHkuIFdpdGggdGhhdDoKClJldmlld2VkLWJ5OiBGbG9y
aWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3JpYW4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
