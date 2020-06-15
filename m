Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7661F9D61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zW5w7V6wnytuWjOvNl2J1DcknoX8glRhFuiIndfiS90=; b=uZUsxkxHva5/FvkSgFN826RaYF
	5EdSIeH2v0QAdyiCzUyzrpa+NDPVZnhWHzTEf40LCMcZPotu8CMzmydHC3dA7KHNsJd4QHDFiPjy0
	mxS8FuHaj0O6GH72TlKaz352Px4ECKuryjjEXhCKpwFJWo2xs3jguDwfRcQXmGAsL3t0bKh+CM0In
	2JeuDFJj8xtzRCrHuzJtRKA5aoQs2sCNHWgw91M3wHvVGSUW1Vh7TJDcLNA86dwaTlsMVbk+ksRiy
	+q2VZcPbXkrV3p0ZNufzNOh5QT6kOtWZ65wk8zum29voUpv1tUHcMayyAh9PONnGw8M3eZSMyuwGq
	+XlSNeJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrxB-0000wu-Kf; Mon, 15 Jun 2020 16:27:21 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrwq-0000os-R6
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:27:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id 23so8014948pfw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 09:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=GsXyMgxQo3eYWMgQOiRxBQADze+LhKM+ipQ94PZo12s=;
 b=sV+a2aIACIuf8T5L3j+IwsVsvdZHozCQD8jLxT2lUdqYMSd8YBR8CPoJg1Z/SRQK5v
 gTUNn/xFgJhRNE/e4b6m0lnPv2nCg/2SfXXTLC1Zcco8pfXFHrujlyU0kmWMi7VT1qZu
 mFXmJxhDMOcFyuq0X2iTcNVnqKIv6TMauQPhBuIuEy8cGoPZyjZ7qFvap7rNAgTP9Cp3
 H77A58aHOJEoF0Cv2yFsd5/NrW8TcARNdZZ/OJzaMR7zoJ5xMO6XQfMbLmZck7Fj3OUi
 pb/8iNFEiLWlvaL7ZuZ5LTbbp54AXrlqsUi6D5W6uUc2ppS4luUVK3yVGmN8CCq6GPqN
 XUFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GsXyMgxQo3eYWMgQOiRxBQADze+LhKM+ipQ94PZo12s=;
 b=nVvI1zaxLyReB1nlinmtugVfqJRuQc4+80lSCjjoSdEybKEcwGjj2cQsiTdyYk4oFf
 HI3lz4sWhNLd2aPQEZ3AkvDwTHiKy6Eqlyp9mAukLB4Gt59MWxN35D8+TnCOUYm40GYV
 NpY8UopWUjjnS3y/LFi954+IENTPEYt5DKWg34clJ+d6UDik4/mkFaGOFn4DXM3QvV1k
 Qbw7plCatnRIvWpYnGgMFqdNvu7gpZpBNgtx7A/aACA9xlNHwdupQfbn/LJ3kCtjaoAb
 g6ldSO5xez3DGD3IusPVSl/CVwGOnu3XaoanbD9rQXzNRKFUFxkvuZcewxaxZZ9IxxIe
 5Z9Q==
X-Gm-Message-State: AOAM531jSJHYugwHCypcSH/VGTaWB7LcHz1Q0Ty+1nuMhCWp7meKpIM1
 oaWN8E5fu9fQbwIGLqLfCbaNunTh
X-Google-Smtp-Source: ABdhPJyUqbmrkkCDS9BI9tdTb6P2Sf2XkKphKAmeqojUCiJmZQNSV/i4yBDwpQSDcuGGUw90lpI+PQ==
X-Received: by 2002:a63:4845:: with SMTP id x5mr20769323pgk.94.1592238419111; 
 Mon, 15 Jun 2020 09:26:59 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 204sm7184967pfx.119.2020.06.15.09.26.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 09:26:57 -0700 (PDT)
Subject: Re: [PATCH v2 4/4] spi: bcm63xx-hsspi: allow building for BMIPS
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200615080309.2897694-1-noltari@gmail.com>
 <20200615090943.2936839-1-noltari@gmail.com>
 <20200615090943.2936839-5-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <7060ec54-0288-9d9d-912b-593b609fd533@gmail.com>
Date: Mon, 15 Jun 2020 09:26:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090943.2936839-5-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_092700_943247_C863019C 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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

CgpPbiA2LzE1LzIwMjAgMjowOSBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IGJjbTYzeHgtaHNzcGkgY29udHJvbGxlciBpcyBwcmVzZW50IG9uIHNldmVyYWwgQk1JUFMgU29D
cyAoQkNNNjMxOCwgQkNNNjMyOCwKPiBCQ002MzYyIGFuZCBCQ002MzI2OCkuCj4gCj4gU2lnbmVk
LW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KCkFj
a2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3Jp
YW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
