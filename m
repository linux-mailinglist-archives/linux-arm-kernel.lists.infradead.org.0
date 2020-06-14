Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7811F86C7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 06:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h52c5mz8HWQnKwAHbJl+bUrz70KdZWgwiWhDj3Fpy/A=; b=PXS3OvCQ7osJvkP6Rzyp4U70H9
	Yqo6Gb8qNf/R3g38rOFHb6BNxn5m6LpHsJmW9EvZ8CBczncLL+YXzQJXSNlnzZ4OJTAqa8D+3mc2p
	hYnqr45UmIAntUXHEVtBe/1GXpQBMwZRv7zj2m+1XDlhVms/JDlwUE8U4hvL7nt8WmF/CF+AfCPte
	vjKoYAgdDPnJioT/NscJsdBuO78d3XMvbEc0HlvdwDQ/Z6IE6M1YWED3AsNZ/yHh3D3G2sPpEiERD
	GUKMZrGMIXkTQ4r0M3NFTwwE5nHcaUr9k1VDbxFTKdJxysriZGeN0/NodLPjMLT2bE8j3YplGQV7Q
	+V3vlwaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkKWr-00088x-M2; Sun, 14 Jun 2020 04:45:57 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkKWj-00088f-4G
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 04:45:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id u5so6124371pgn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=8gg5QrEU9y9uK+DCdRmHTpO7zkuXv8INfFU0qv5ZbRM=;
 b=F1+EobDt1ICx3L43YXBaY/S+xi8hVpPb9gvHaLRnJeHlzyb2VV2FMGO/hXLQtZ0bqc
 SlakszzsYNHaBmEitVc3aeqZ1tn3f7BHQ4kZCkPdspoSqq3+UjIV19M0Pq5/jPEVPg8q
 fhO4NREKt/QTo+98AwAPb+WX6BsIVy7lP2fDH8h5uFbXGA9cyBDhVgHSCv0zh/Q0JDxo
 bYdvTDJyztbGFJ4sAm/7laMuIj/SCC083/+ELhtdXdAn5PTdzfK9puNS1g++/2ACSjjj
 m5LApDKS/3jGaLumbmr+ZMBdqa1Ibj0nN3nBRV1sje5rKTJlCZHAeD7xPGpcVSnm59zs
 Xm1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8gg5QrEU9y9uK+DCdRmHTpO7zkuXv8INfFU0qv5ZbRM=;
 b=ugS0C1zbMdmYm9Bp9DDbPaNSZSNpqqb1i64yb42WbZWq5L7LS1eBartU23oExSY9cy
 goiEhAk3e8+XW+2jnIX+aO6YYw/y7er01gwbdK/VX7LyaozfZVrb9riEOHXdtxe/vRlJ
 PVG4VXrnVyEEdpBmGZPFXC3/EUxUqtiCrQVYyM4c1tuFcMihwcTLFcZZU3Ciy8ey/jxR
 PYG7Qa957q/9U7I4bAFW17ijykNVyhbjpQxxvHpnNlMbzqTGBZAFpe1WykTUfOvuWp7x
 Hzn7wx79rfrlwLpu1qI2KvVCkS3PWx3PPxmsRL4f/1VQIG1rW+jBEck8T+yTEwoNJix/
 yUaQ==
X-Gm-Message-State: AOAM533zisJyoQAX79jMizt2BpL5nGfwjJk4KjeoNes7BAM0i3rdnesu
 D1zLk2ZlYp+DyblWEcQw14nMjimx
X-Google-Smtp-Source: ABdhPJzFP1BfCPGNEI7WxZci4ng51jhzqngxgUZKePXhK65118G4PfQSBVZX+xAlSFpKL4ppSfK3wg==
X-Received: by 2002:a62:2942:: with SMTP id p63mr19181359pfp.56.1592109946808; 
 Sat, 13 Jun 2020 21:45:46 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 h3sm9644528pje.28.2020.06.13.21.45.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 13 Jun 2020 21:45:45 -0700 (PDT)
Subject: Re: [PATCH v4 2/9] mips: bmips: add BCM6328 power domain definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
 <20200613082140.2009461-3-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <97cadafb-1b83-3d9e-a9f5-fd15a228febd@gmail.com>
Date: Sat, 13 Jun 2020 21:45:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200613082140.2009461-3-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_214549_170260_26B795C1 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
IEJDTTYzMjggU29DcyBoYXZlIGEgcG93ZXIgZG9tYWluIGNvbnRyb2xsZXIgdG8gZW5hYmxlL2Rp
c2FibGUgY2VydGFpbgo+IGNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29t
PgoKUmV2aWV3ZWQtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPEYuZmFpbmVsbGlAZ21haWwuY29tPgot
LSAKRmxvcmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
