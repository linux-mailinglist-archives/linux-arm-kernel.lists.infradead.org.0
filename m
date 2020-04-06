Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1FB19F348
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 12:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LxCwD0KouCIohZioAZQcWF8QqQbO1GqDvT3DQn5OYt4=; b=e4g0KgffNvZY2Y
	KI6jtG5QmeyU10HYmqLmvvjcLlfhYvenrbtsFouBYEEQiiI6D5g3Pu5GTKaNtmOXDn6JJ4a4XBOZQ
	E+itVnYRL5sK/NfWdsDZzO7yPkV2NP6TqgdFNsdhtFh4DCokcjjND0Z3kPTvf4FlQOjg/KHSV7fZ2
	V3Qx/NW93Uc8UxlyrFOUPrybJbswvl49In6hH8PPYb5ksCb/xyfOR/qrcItP52Ws0Qd1XstybXcg6
	pxm6KVFz0bQblUeyoDURLJmRGALJckY27NnMgVujD1WRpUY7Qw39G0cXvnMmOztzOYbLnXFaPHfeU
	zTBhKuNEKYhdm83Bhepg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLOgP-0003dn-7i; Mon, 06 Apr 2020 10:08:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLOg5-0003ae-H5; Mon, 06 Apr 2020 10:08:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id c15so786246wro.11;
 Mon, 06 Apr 2020 03:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7zPquDCtZyzOA5PY0kmGl8Aq5WV/QI7GoaYVVezsWQc=;
 b=pxoICYCZQS7Mzt5lAR24RYW1cuT93hpaA5+n0m7bNjt79njheoWOcIjuvkb44yyLFF
 rp4q7KYaZR5udual8Mp8j5dnhxcWHyG8uecj1e15/2KvqMUIPovLmlpynMHbFKmByaoI
 3h3axgD2h5b1LO1VRDIHDuOOUS89czc0Fr2Z0Drg+vV4JXycfYaL74Epube5yofIONcC
 81TPSnjxaRlwteYYCm7tJKr8sqG/d/0dwviVAwZGXdyhtqmvizNeSz+sLSGsFmrwin1m
 sN4GL4DSzhTOA9xHZqPuc+cTHReWYU0MK9+GjjbECmBSnJxHg5WTX1+7qxYVHzeQX3q0
 CrKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7zPquDCtZyzOA5PY0kmGl8Aq5WV/QI7GoaYVVezsWQc=;
 b=W8wcptrS1cT3/iLwGqMVwxQowLtZnAtBhW/dRArqpWOji+pLc5zlqLM5YVKgsRBZMB
 MlO3wRN4tAObTOzJgQ0S6HVfQULFhKusOeSJ08wrfQEUXzdDghQZBwHpfKR/33aLh5wg
 4tGwazR6ELZdIZEGmHm53WnBbq1zd80VqBqO7MEGRI64vYDj0OIHXGvdL1aKq6wFfFq7
 /5kcila85va3jhkyFd44licKs/TDY0+ln4GNOKCq9PMUMSbOAhDfm437OvcWz1fE2vdU
 Punp1LgA8bZkojirXol+i7hrCtrBm4nU6bEAxm4YCbMbiylQs/LYEviR0dU7nIevKt24
 ECzQ==
X-Gm-Message-State: AGi0PualBjdNW8lGoY+ehpPMFOZ+kckKaw611W7K+l6V8W1k4r3pvhQs
 RbnsvgUqJDUVBq5QE2cH6q4=
X-Google-Smtp-Source: APiQypKT92w1IJdahe4OdzeoC7iyiOJq/yEXRrgZFi6fmM8BbWCdGwkLm3cnmjdvbBLeFk1NJXR81A==
X-Received: by 2002:a5d:4e4e:: with SMTP id r14mr3959235wrt.362.1586167703938; 
 Mon, 06 Apr 2020 03:08:23 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id y1sm17999252wmd.14.2020.04.06.03.08.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 03:08:23 -0700 (PDT)
To: heiko@sntech.de
References: <20191219121954.2450-1-jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: remove disable-wp from
 rk3308-roc-cc emmc node
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <cdad08bb-6857-3c1a-aead-9313252cf793@gmail.com>
Date: Mon, 6 Apr 2020 12:08:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20191219121954.2450-1-jbx6244@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_030825_593078_E34189A1 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 BODY_SINGLE_WORD       Message body is only one word (no spaces)
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ping

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
