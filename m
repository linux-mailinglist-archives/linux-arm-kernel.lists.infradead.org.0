Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B7C1ED702
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 21:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6z2zMTPuODLluY0OhE7KpvDBxeQI9Ui5No6yKRsKzJg=; b=uH4b5pC5+LhjvR
	xVAYUyGRj4Ouu+7CJi0tO162WoZRX0uBAn0OajkCXe9rmklE+0wlsNONuCCGphRJNNcW6DjLM3dik
	Nhzl40lxiglIdn50l3JeQNFCSUdNC/dbxvbO0nmVpWxGqCB88ZPCxt6IaJkc4OIuicPb4bP/KEh2c
	wbvGEOJJd883HRiw8TPpAEuHKmzmyX0aif309vENQmw7tF+7Cg/ThSKmySuSq9Ltd95G+memvlGMp
	g2EFbXPiWfaqowAtOkOdR+NQUkeMsCzNRElPL6zTMriRuTIKkj/kN4HEtwhlDorIuhg9Ty9LR/J3Y
	Ngt7z9MRukNCsA0fDt6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgZFb-0005uV-UT; Wed, 03 Jun 2020 19:40:35 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgZFS-0005ti-U6
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 19:40:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1591213208;
 bh=HlNFrML3ugUOMYnxbMzqvbQ5qfFCwejS79sqFYHvkMY=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Tsc/GgTzGOPXoo/so2Mke808NlebzVJYADKWwhsRREN5i2lrmIPDfyfoIU8KbT8zi
 WoBtueiPLi7PRbKUU6YToJe/AO1dEm5EWowg7j6ELdKHtKwbz/F2Z9InQ94iVhp7IO
 PD510rBX44e1lf9zIBH9Yk9l78ZoWSIHG8Puu4jw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.131.82.231]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MHYHE-1jhedg0348-003JA3; Wed, 03
 Jun 2020 21:40:08 +0200
Subject: Re: [PATCH v2] dmaengine: stm32-dma: call pm_runtime_put if
 pm_runtime_get_sync fails
To: Navid Emamdoost <navid.emamdoost@gmail.com>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <873bfb31-52d8-7c9b-5480-4a94dc945307@web.de>
 <CAEkB2ET_gfNUAuoZHxiGWZX7d3CQaJYJJqS2Fspif5mFq4-xfA@mail.gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <8a751660-a268-1153-8d94-94d994772689@web.de>
Date: Wed, 3 Jun 2020 21:40:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CAEkB2ET_gfNUAuoZHxiGWZX7d3CQaJYJJqS2Fspif5mFq4-xfA@mail.gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:RqhrfONo8K7l4ePFTEhbjL7slmvd4F33jqdLYnFHzdGF6iOg0zP
 FqWsIoFPS5aYbKuAS0hCPNN9GqN9t343PuA/inNVWXqj4dHKXIwDsgGIylE5El83gokz5Vu
 CB16uJqbTz5kgCfsxYuhcrWlImDpZNYMfGNmDHzqHNAuc6yz/kHg9itY17+dhsyWhToVWrr
 vnLY4iQXh9J8ma0r1f1Hg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+N1Y0jXpYVw=:qAZ3jiouL1p3QProXXjJ8I
 y6Yfk0jhfJ1916HWlKZHJ18Jul46WNZEGtC8MjBcauAwmGBMMWffxJOuPe7yrZFPVwOYpbpTP
 tIkrj4igzxla8DuJZhYxFV4dGFs6uWV6dIzvbcF6VkkfhAKnrhdf3sSlO+p/j40TXHhSeIlF8
 GlwpdCnUaa5+J2623aMaMUrSO1FaF6+FQN86zntcKTZo34/Zxf6hP6RgAnjQLl+pqrs4DuwKO
 ghxNXnf5xTbunZ5ydK6nwuRlAor3zdkOGfwKw3l08ytSV2vkfWFYoh324M2gu+nAn+icfCUk7
 WYRaS69pdN9q7Q8wTKLB+Y6p0IopMtHhVs44056KuZFokJQ+BtrpyiFaEXgsnzNycHoK38Pa/
 TtfYL0pCMA19Zw72eHTFCjGRr6OZgv04/Xv4QO11ki7MxpBbStxabowHh4FOdZ8xpBTDSomYn
 co41TchOGZFJPalltG0qyr8jD+SG9NAQoEXwCHpUiWfipKHjTrSyLqJFxDOJr1PilFmjm038c
 gl4o0U+Dl0QaSPJOvpItq47rBQfQbxxUn+EK0rmS5wwYe20Salqu02HRagXdeNGgjvXCZcYWW
 xBSRB2QVcUm9PLPGBUISVAxEX+9u5OZ/KQUSOQiRruK7R8xEwLY2ZFxqgq2rK+kixxMxc9jrt
 jDBXqlYkFrPy5UOFkSPv/RQtgY+ZON5knF0C9CWK4glAM7yJJ1NNRXhpsRL9go/IQ/Bf5XYnK
 vtug4sqAz4iYuYpn4kJwvca/7YFqdZt119mc90q1/KHieJK8ZAH2hRgOBYxDwlyD+7LcFU3Iu
 hTQJN4T9fxf2tAqTFLSytXoA43v7avf5G8n8Bc5MKOZbs4gqG+T+pEpyxXD280VBjNVtim5ck
 miU/rsRrROgOPbRXUKpD7Ea8KaB6LimwqkvAbFYNT3MwNjZn69cqJNfF1lq0F26Fxc8bAtvgG
 CA7oRsKrmNscmWro92LHe5r28UJBmo2Z/NbsGfYd3poslCogaeTDhvbwnPnPAK98QDvrzsrEo
 NDaaRJ3/Lyh+njl4o/+pBdjlPZZZKgoGVEG2ir2dc7UVmLKfHW+ire0NHvhSWs8wsA7tMmOwf
 pssFUkNKXra7hh2ITr1CH9PZvPzs9tZHPVVyTGL0eDQKnwnLZtSo7VWGTasoUINveLwqofmKA
 uZdGdApGUwEM1pE7XXKH1V8Q8Dj0ATnhirf7OYkjCzoiEBQxp7rx4oggVUafhiLmE+NSual0i
 kbGO7elQC4G3rmHeA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_124027_252627_6DD21733 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.3 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 Kangjie Lu <kjlu@umn.edu>, LKML <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Navid Emamdoost <emamd001@umn.edu>,
 Qiushi Wu <wu000273@umn.edu>, Stephen McCamant <smccaman@umn.edu>,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> How do you think about a wording variant like the following?
> Please stop proposing rewording on my patches!

I am trying to remind you on open issues according to patch review concerns.


> I will consider updating my patches only if a maintainer asks for it.

* I hope that more contributors would like to improve the software quality
  also for commit messages.

* Would the adjusted patch prefix need a different version indication?

Regards,
Markus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
