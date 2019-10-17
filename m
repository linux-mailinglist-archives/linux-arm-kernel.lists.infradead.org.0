Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D7CDB781
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 21:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdtYezq+FCZUStz+VrTx491qa31V7QV/kxnKASuqBcU=; b=pIKbYdyUIoC2px
	AcOM09W8kMFFj08M/tytcBPVL+bfUGRwEdc2LbtOSZPiAm54K4hOB+z7BrjD5BW+MbYXcY8OVR+mG
	q1O5vlhehtNZTJpgozUOoxIYNFtmsZAL8IpUQDjdksH+w4pVzSgBehOWtc44YmF9nhcaaXZZm2TdG
	33jpQM1nwRK6MZA2V29D2TBVFuSHhtLQ7M3mpG2HN1TgifMkk7pVbxYlFJeMI2VfsmaHuFJu0D0M9
	PvLXZzLjQqeoQNYLrkQT14VUexmyuKCjD1/ugcZmIYnsQJc8tnydKiep5cSCdseYntkpIV/Nje5H4
	ex4O5ttwihhi3IzgpSZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLBSc-0001Na-2p; Thu, 17 Oct 2019 19:29:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLBSU-0001N9-7e
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 19:29:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id w18so3086683wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 12:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Y2Yht26P1vktZqaQqNQXULa6hC952BSjLWHUGdYiAU8=;
 b=fCVM4e+bvdog5i14IO692HIFF2qWjQ0LOWu44jjaqLNYlT57j+YcEM3ekGAQzZxz20
 3tXFppYjDQYdLxkimlZWT/gcCRiQyRg320zGG1vYFDcrK67Jq7KAEOqi626aIGH63Im+
 8Pds1sqO0H0UNx8RL3YqD6sO/ctMHvtOhdyaRg1CG5km52KKuU321lt6Quh/OP9Tqu1U
 QWHd+dOgBZtVUrFAJvcjnWoc0ybTzWsXXpklDwCUusD9+qX/2j2lVcI0GRcBE7aln3QR
 v0icYUOa2IQjV7XpwtuLPAcoX1QGU0ZzDUOK8STZwCPOFF09pCfrSKFCmSGTSSBv41lr
 iU0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Y2Yht26P1vktZqaQqNQXULa6hC952BSjLWHUGdYiAU8=;
 b=hSHapoEgfhYNPwjGLZVYKurFcayZC5J/ZIeCiLwBzZ7P9V2yQtpbUItF5B4NLeeMox
 dZMR2yF2248FzVdOXJflanpV20tlQCtAQ95KjQbnW3QWBqSweCS2HyCXfX1Hwgj3JN4r
 W2xLRvoXb/Gt3vHhhbudY/yp20lZxVfWxZ0ILuPnQbrBOZzxg+Sfr19j6xN+1r17Ze1x
 nuhSBMN13hsArtLVVUGi5altqNbyWjWJtSNsV3c0XZemViCOAMksSB0KhH5lFiRFbJhn
 9Vnr3Jm8Y3aUjjXaO4/vM35JmLH14k32XFeP2EIw+NekQRdGCmxEUOBwKRpK3G37MOaZ
 lp5g==
X-Gm-Message-State: APjAAAXuTbIAh8EKNAb2IIJq2jByCB8wxcpW1FUICt1vmL1ZkE7W2q45
 C4gX1QHNa3rE/U/jHbDOfgc=
X-Google-Smtp-Source: APXvYqxX+snzChK31VXq4N7NBXDyDvvBCati/n7FkaOSt0E8/hS5jW4bweg0u6211P5O37rSRC5gSQ==
X-Received: by 2002:a5d:4d46:: with SMTP id a6mr4350839wru.75.1571340552062;
 Thu, 17 Oct 2019 12:29:12 -0700 (PDT)
Received: from [10.230.29.119] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k3sm3227342wrn.41.2019.10.17.12.29.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Oct 2019 12:29:11 -0700 (PDT)
Subject: Re: [PATCH] pwm: bcm-iproc: prevent unloading the driver module while
 in use
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Thierry Reding <thierry.reding@gmail.com>,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
References: <20191017192218.9042-1-u.kleine-koenig@pengutronix.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <b5ebfe5b-1c5a-8349-d232-d69f28024d35@gmail.com>
Date: Thu, 17 Oct 2019 12:29:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191017192218.9042-1-u.kleine-koenig@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_122914_276877_07880AFE 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMC8xNy8yMDE5IDEyOjIyIFBNLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiBUaGUg
b3duZXIgbWVtYmVyIG9mIHN0cnVjdCBwd21fb3BzIG11c3QgYmUgc2V0IHRvIFRISVNfTU9EVUxF
IHRvCj4gaW5jcmVhc2UgdGhlIHJlZmVyZW5jZSBjb3VudCBvZiB0aGUgbW9kdWxlIHN1Y2ggdGhh
dCB0aGUgbW9kdWxlIGNhbm5vdAo+IGJlIHJlbW92ZWQgd2hpbGUgaXRzIGNvZGUgaXMgaW4gdXNl
Lgo+IAo+IEZpeGVzOiBkYWE1YWJjNDFjODAgKCJwd206IEFkZCBzdXBwb3J0IGZvciBCcm9hZGNv
bSBpUHJvYyBQV00gY29udHJvbGxlciIpCj4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7Zu
aWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KClJldmlld2VkLWJ5OiBGbG9yaWFu
IEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3JpYW4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
