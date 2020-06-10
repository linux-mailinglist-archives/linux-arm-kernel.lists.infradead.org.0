Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015831F4ABD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 03:12:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0kkcomygsH1/juyKse9rwDadJUASCcNaEHTZYERt7cQ=; b=C7Juntlk+V/HhajpEPO4/3RqGP
	JeuROQyMVe5XSz6tAIBJ9M7lMN8abFBA+GJ5oyZEj+na1YxYpWfyDKQMVEFLSIQqbPUIy7xNAC3IZ
	52fIWQY/ayp7XEznoqHMz7n2gaiRBZowNWpQO7wSPZKCo6pNSKHtc/BNy3mcOTz9DDNcuKxJTp1yF
	GGESV7g6Ryw0CfP7TaXw0Ew3CuIyOARXRQ7Arop+Zg0zmFzh2SyDdKFmAsVohPwUsJf/PTpHG7/qc
	AKgOTV4SAP1TqZ/QMB033AWtbpKpnpiHAbZt7A4kMqVQiwKVFq/kyztQmF2c29mTLAKmTd5o69Fjb
	srivuuFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jipIA-000191-JI; Wed, 10 Jun 2020 01:12:34 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jipI1-00017s-SI
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 01:12:27 +0000
Received: by mail-pg1-x542.google.com with SMTP id 185so210327pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 18:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=MqJjdKei4BqUxxWSzNOOcjTAtDFpaAnGp1PKq1aUZgE=;
 b=Lqu4zmHYBn3Tyq8LuoPSLUYoRwuJugO52dN8ZEJ+P54WIG9oEPCqjHeutHQbjyO9jG
 5WpTtpUBsaU9YBGxLueJFRm2rGRs5Ksj6NLRMl/8ZxLrAOO8Dgxdb2hse6f8rjtkfoA8
 ca2DL+vmyaZk2is4E6e9PwCCqzeyFCcUfqhgTm+Xy41KbEqqpX/Yry5RkDDZtqHnlLR4
 bmVEXtB6y/H6+R766nwtGje3kuAhghFxGxdSp0juxgtzGL+1pc0SF1X54BSGwt5Hu0BJ
 KdiOvzXkQ7DrGGAqxYGlgzFRym9oS59aPCz7chVt+lEE6Plhm8zrqcO86OOIJDIqWqxb
 oM1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MqJjdKei4BqUxxWSzNOOcjTAtDFpaAnGp1PKq1aUZgE=;
 b=ksnzkL48hqwusu1he94B8jJm+qJTfECOUl89nFbG7Q5ir7mlpliDOnHvwZK+DCHngn
 rOF8yV6eeVx6QONsbYjZVJyOXfIRhpE79/kAaSOU+X5384GRLpXPEk7/3At0cIw/JieV
 62NybyDjXhM9W1k1gEdJ33sOsvyoDq55YvkTNkDTJSSb3kge71J6KIY+j++coNtEykJC
 aOTr0fACGAZzbRtxWwo80IzlIZchb3N2mUyLRMO7KKAnKtp6FqsvjDnsbUfxq213CQRs
 dQQK8SmAoADIl2tvkppps8oh4VrEYufkzYnU3qdstkb2RWFDNONFkLpUuZMY4pBjgNOc
 AE3A==
X-Gm-Message-State: AOAM533pbL45j5SXgbf0mxjoIhUZ4+Y8ZlC4/ZQ+Ee4Tj3pnQdqLilHI
 x7Z4czDAnS3L90TWKGvU20U4dr7S
X-Google-Smtp-Source: ABdhPJzinC8euQD8NFr+jgaQ+nGRBexC6jaF1rTAOGjr0cX59OUmSYfAu7TOiP54MCNY/Xf93OPWvA==
X-Received: by 2002:a62:1a87:: with SMTP id a129mr483796pfa.95.1591751541968; 
 Tue, 09 Jun 2020 18:12:21 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 71sm11153202pfb.20.2020.06.09.18.12.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 18:12:21 -0700 (PDT)
Subject: Re: [PATCH 3/4] mips: bmips: dts: add BCM6328 power domain support
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200609105244.4014823-4-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <c63d03d6-77bf-04bf-99c0-953da7197a3f@gmail.com>
Date: Tue, 9 Jun 2020 18:12:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609105244.4014823-4-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_181225_920275_EB49CC4A 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

CgpPbiA2LzkvMjAyMCAzOjUyIEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4g
QkNNNjMyOCBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCj4gY29tcG9uZW50cyBpbiBvcmRlciB0byBzYXZlIHBvd2VyLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+
CgpBY2tlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tIApG
bG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
