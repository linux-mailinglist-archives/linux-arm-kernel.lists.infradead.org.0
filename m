Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF5C1F870A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 06:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PuHmhaFUpLzepfs9bi5xQ2MpldZBLWwon8AIAw3Phmc=; b=pzGCnziQQQiPN4lq8mHmUXDy5r
	tRbal9+RN4O5S59xTdDLcosGeH8LKRV464AwjxFZyhpJqXS0LFY+Dxglu6N2QvZO3K/XjCKSOWpjk
	bI/5bZ0ZDk5Y3Riw+YrI+A4yNsIKiQFjKSwTwvuXfQZlNbbwRSuQtpWJQ9QXeckyxC5PkiZ+pU6aI
	q+JI6Txa8GKqz5pJ8R5pLsu2Rh+N1NR93YRSekaJ2KR+72P7PmgR/smrtvfxN7Ew54Yp8jQlvrcCo
	U354ZIgVVWTuSepONLRu3E/DP6IArDVsvhZ6bScWv92jOvVZNL6arLGOrFeLYLdQrJf49aQZcBnyH
	FncBRYhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkKY3-0000gi-J3; Sun, 14 Jun 2020 04:47:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkKXt-0000gA-8t
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 04:47:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id 64so6311144pfv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Pp6Jc/qHwm3K6KLFEXAkOU6QAZIaSNRey/DKSNOkpJY=;
 b=cptDdR0DEVeZ4KYgevCi9wev5HLtrFZ2MS2Yr0evL20z7ZKpLJ8QbySJhXUig6BuAt
 ucSYr/swKdFVvmLaQ/qeZcGqcqFN3GPScD02AYEp56gzVytFPhqKnkbFMVQpvV20TE0J
 DO3UnF2C33c5leg+5QBc+LgewXzurNNZpSEqFOol0NEWFbopaP1pZTfW8mewVhXtMKLl
 XZXjzep3ehLKYHUWlDI8SIoSm60Iet7At/pEJdmBy2SOHdwu2KTbm6Z907fdrhqpNkkx
 ur9F0I/E+oWibjc/OmEUearlP5eTu2Z8TSfC+IFcpx0FBRoOZKMOnd1Fmwb0HlGL3cAm
 2Zqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Pp6Jc/qHwm3K6KLFEXAkOU6QAZIaSNRey/DKSNOkpJY=;
 b=XulWhh0M6/ZpgHIJ/KwkqXvtwLxMBNTTw8WUKDUG3GgYdJ3zLyCCz0F7nlDtqLMB9N
 IIqu4IQegQjgwGphJrwsyNkDq5ifzVxy0zq2SuXA1R6ds1aRltw4OZpM35bwunBE/bV8
 1FbaCWn7UJTqNVuQ0xxAqOlx4h73fbRxcpvzzpWuOblxSlggGq3E1v9syPIHtSG+i54q
 FzaFJZiXX8YtMPsjknAl2pHtqkEw/6X9nac8DBOcT/UkknbEtYeMP8hH/wD176V7LxZi
 Xh2C23jkN6N4lsEtJkqePNmaUL4dJmrvNGdqGnIyhOv84y8/VE0UM93abLhGL9DgJwLK
 4hjg==
X-Gm-Message-State: AOAM530u5+FK3cBgo2wTQyjnbLNvqyF/157DObGI5u9Jfc/7sDKbjQQ3
 iGvUk6P1qRA2eJfgdmUJvTX8BdNW
X-Google-Smtp-Source: ABdhPJzX9uljtFiFec49acFDeQCDPizUF+M+Vtn7EfblpUiywH1xhNMuv7QunwnsbEi0ARJnvMYU2g==
X-Received: by 2002:a63:5a60:: with SMTP id k32mr2995633pgm.73.1592110020212; 
 Sat, 13 Jun 2020 21:47:00 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 m7sm9057955pgg.69.2020.06.13.21.46.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 13 Jun 2020 21:46:59 -0700 (PDT)
Subject: Re: [PATCH v4 5/9] mips: bmips: add BCM6318 power domain definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
 <20200613082140.2009461-6-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <bd9779e9-5a67-c0ba-b179-f5b4de743ed6@gmail.com>
Date: Sat, 13 Jun 2020 21:46:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200613082140.2009461-6-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_214701_324847_3E47DE92 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
IEJDTTYzMTggU29DcyBoYXZlIGEgcG93ZXIgZG9tYWluIGNvbnRyb2xsZXIgdG8gZW5hYmxlL2Rp
c2FibGUgY2VydGFpbgo+IGNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29t
PgoKUmV2aWV3ZWQtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPEYuZmFpbmVsbGlAZ21haWwuY29tPgot
LSAKRmxvcmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
