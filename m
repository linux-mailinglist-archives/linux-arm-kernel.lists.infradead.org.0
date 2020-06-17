Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A681FD7B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+fg/+lYmvXwEWZK5y+d303g1rjtTo8LS5/ELjg9Dynk=; b=IZwO03VMs9S+IyqJuvJJ3b/MRI
	jtYHfAgDXoNITGXv1hiKJ/PdCA0p4mku8+7/hLv7wmTXWXwt+jsg7CXECgonu3ny5Wie6A4hwidi5
	Grutw889kKtN51PnEAftoRCXvZDJsbfdo52vNgDw1Z5YotKzr9YW0uSaxA4MAHKQhLhHyDDVq+UtO
	0ysopt/F8wO9C+PDg9zKKgsqqkSsNnpE6jPCN5suL8tP3+gHVSpAK99UiH4GBKccG3P+QWfcbpiko
	FXNpWuQDI8s3/zmABiZ4EDYQaY/qlfUkyaQF5/ilEzNcr3uHiEZwVudM7IPXYc6d4TvTmJPFxuHvc
	8k/adekw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfo6-0007N8-6z; Wed, 17 Jun 2020 21:41:18 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfnV-0006wn-Go
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:40:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id d128so3574862wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=efeL2ymDRArA1GXEtiNeJF2lhasTeMgLsuNXEb/IKPk=;
 b=XnQDm7Va9MlH8z9cC/AwVRu9neWaFC48Dqyxu8WbE2c7Y0kWTbtHr5ff+0m+uJACX2
 fa13dA2Dnr3Ha7b9jGNNJzOe2Cq/lMyD5LZESSdL7ac6018fvXSJAVb035KnFfsBn3tv
 k6BMdpeFlCbq2JGoDmr9itei6P7Ln9D9W9K2YYVSLHdKiqx+nviUJT32r4RwJMZYRpj8
 B2nMWmebfiAKUQdUVWybAhbtX1FK7JfsPY8evKU+cqtQMRc7ow3dTWlNs48s2t7WTGpL
 +oqcLPzPeCrAoHAXyq/f/YhbTTTYslzx+oGbms0oz9MtcE3ttHr4nI+y9ljKuail/zxZ
 28Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=efeL2ymDRArA1GXEtiNeJF2lhasTeMgLsuNXEb/IKPk=;
 b=ujorN857P5PQqWgZQOBp3Ygk4+XT7E8IG1RQu92Bi8klJ38AwWeFHKwCgkjUnmK2XF
 HPJMYDKO3e2OnSAs92fm3hdYgHiicvEHL0V5nnZ5nPnxvdUH4wt5OTV3Ga1LLGjl4mGG
 pPw3lP24xqjrIo87kroYK3v/XUdnaQlxr37Ryb0GzFmRu6xrHm6O65lBbK/tJs735fOB
 iblFo88r3pzt6ovPIiPz+ok4PwwhCbTm1yCeHGv9hK/w55WJhYhG6tNah5poKxWlCdPC
 HL4t6W1H+U3cVAKEcvbNkE/G+YynmysWSonPreHCOrmoZdU24mY3QupiYkZ+S96MxSsG
 yt2Q==
X-Gm-Message-State: AOAM5309HLL/XPYSuGRmwnihI9tTBJofNrYs9kZ1MeUpPBywGJBGkueA
 Tnm1NvoJHLG5w4I/Xb48w5k=
X-Google-Smtp-Source: ABdhPJye0zCbpMlRaVUNwL4eMMpYbrbcI+mSiIxK/kpN0bISzf3wKjqkXclQmWHsjv02awHVbGdQ7Q==
X-Received: by 2002:a1c:3d05:: with SMTP id k5mr692572wma.160.1592430039675;
 Wed, 17 Jun 2020 14:40:39 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 x14sm878438wrt.60.2020.06.17.14.40.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:40:39 -0700 (PDT)
Subject: Re: [PATCH 7/8] mips: bmips: add BCM63268 clock definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-8-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d1e3224a-ea06-204f-eb13-903361ed5da0@gmail.com>
Date: Wed, 17 Jun 2020 14:40:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-8-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_144041_639298_096A8416 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

CgpPbiA2LzE1LzIwMjAgMjowMiBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEFkZCBoZWFkZXIgd2l0aCBCQ002MzI2OCBkZWZpbml0aW9ucyBpbiBvcmRlciB0byBiZSBhYmxl
IHRvIGluY2x1ZGUgaXQgZnJvbQo+IGRldmljZSB0cmVlIGZpbGVzLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CgpBY2tlZC1i
eTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tIApGbG9yaWFuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
