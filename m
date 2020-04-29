Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 246DB1BDA34
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 13:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uR5L58GledlH9FeQVx0NFlPmE/n/uz2whRyzD0cqsww=; b=rNir7u7evqMivA
	aUxA/R0oScHL6POZWDXyTv3Bt6om/jJ335AzhC1GZ7F0L7G16Ezt9CuuTwBDIB0D2sBR0R1lOdFP9
	k2Xck1scJVHZDbiOq7af8CeL5wgwaBM7K3Y+FA2uMlCGtz8/je1sgYC+CQtPFf0bGgE0iXcsNGNzc
	h5AyPa5uLz0Y5Sje2neP0kyA76EhWfg2C8Ryx71t9PsouZzJBpYpRYItnglkAVe3Vb0iriBS3+DhJ
	3ZekoAP5s0i+jZUbIx4qHT7yFLGeqhkf1aTn1gXYn0IGLWTI9n6sio7RfC0wSuadAloMBzGmc3BAO
	dB2m4ArOrMhoUL4ebChg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTkSn-00066E-Sn; Wed, 29 Apr 2020 11:01:13 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTkSc-00064d-6c
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 11:01:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588158042;
 bh=bgrdZSsBnxpNF1hOSKH6C902WZ8whldmXurKxgXfQXU=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=WntFwtyLKTje5G4w9Qmcj4dBoOBcql0XmvBIkuah3CJYqmJuOpy8yBrbV2LKcj0nT
 Z3ekOrm0jmK8yAiht8j/FB5BrKCz+8QUTFltKo/wSlzaud728j9w+iLpNs9sDNGN3y
 KaEeKvcMRptS9wLil3swV+wO+18UVkqFSbd7cdcA=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.133.72.72]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MLg8p-1jU1RB0twR-000uBC; Wed, 29
 Apr 2020 13:00:42 +0200
Subject: Re: [PATCH -next v2] mailbox: zynqmp-ipi: Fix NULL vs IS_ERR() check
 in zynqmp_ipi_mbox_probe()
To: Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org
References: <20200429073020.83519-1-weiyongjun1@huawei.com>
 <20200429093503.150485-1-weiyongjun1@huawei.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <93fe8107-ffca-8006-4020-be3bd6edfc57@web.de>
Date: Wed, 29 Apr 2020 13:00:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200429093503.150485-1-weiyongjun1@huawei.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:0WI9xzNdwiPNVEbUWiOcWiH3k+Cgu8XWN978CpIwo0lENK+PMIz
 l6Z6M50PT82/vS7ZvHAfXIv9jtflhdbmx2JJeYQRy9rmxMYZwCA7h0txIyAU0OnbUAbAV+B
 o+9szGH6a/kIvauGR3g9lrxfjYrjXveH9XQmBiDsETfFZoQSnfY78rLtFARAgV03wnD/+sZ
 77bFM85eTe6F84AtzoDgw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:abFhAQNj8xY=:AwpudPg5431nxicLzFL9eA
 hTt3hDLkEFcw7OwP7Sc1J/1XgNNQdxZakezpFhmWR5biQd6mYq6FMvfO8vhd0aOjhw1COWn9u
 zd6X+1GU7MQm9w/ECesiz6gjDsL4gVqUPlRLP4u/Amg24ADRfz82eM1DkSv5Hags/+K0OHb/0
 fPvBsTSivhBLGstLNfxq3TT+u4ng2sQm6Ux1Hhg5Xd2JJzj2QWRtBWcer7jiyPSaFulf13xeC
 0krR4Uze3yuUMnsbm2DayrWq91aN/0DWcpv4ZSOkVf8nXgHxSkxNhsRqb1jBxWJXe1wV0KJq4
 t295btun3+VhfhI5FgMdhLdTbz3YtPmNHDJZavpyKF1J3+F6FaRSst1/KJh+SHIi2nvvvWOod
 dg8z+PzmxAK4L8bq7dh3RefBbqyt3PmLQlatAn7cjqVU/Z8azzz5oyvhej3DzONfWqHH2o0ne
 3bCN3L8Kr2Z6Oky9zbeE84oQI08Nqi2PwbjyKrTP0MhGDPXORYwNmo/Wd2Xdvug0Qt5rRpfWr
 bmR9txZkamkNQGK03KZA2MbW1DFchxBqCBKjAck8RDTDetK6aD5r990XIpbb6U9kKl4a/m3WM
 3LLpfHwcXxW2K3PTSR/KDLN/UNZykS+PEhZW9uoA+fCaZMHnxmKj8zJ8qIC4ILI//57WwRO2E
 PQmzj+fZOX2xgT/3coWhioQlqw4T82TtKCuD754O/wN+LxIYkeOPl1OGBdk7fvYsaYdPgey0K
 BeRXgmH2x4jmHE+4CZNfUC//FTVTxGA5PUqlrEgvpLRqTFAQkQQAp7abxmRwNhl15NprBx/3m
 HIWyAlys2SXaP/AQC5UY01UwTGSYUZ26GkhrFrumtCDiizAYN60TNawISCDPE4anVWGEjuuIp
 0o0Fs1TBTVcW9HCLdBuPXGObFffFlackIxrY2ivKQ/zWxqd8YVc7LXijRbU7Axvw9psoZXtUO
 s0TBmadN7uXb9ev7PFjU49fuDJFn5Mns8fTbLggTVBJd/LspOwhvgp8SIUDagzSqNqJVwBdRh
 HrofFePbNMxeoe0g7F++NgWlaYUvRiZ3Kva9yGBXgHU6JCkFRUOR5RQwVk99oMK+wVR75QTnI
 zKxkxluGDCvhGezFm/20omy/lNgCQGjqv9RcH3CqSslYyIsrbmDjO2Tlh7+2am7bfE6lJ1U5U
 8MiC78xYioI24YqGGX5fdIHtsVcDE1mvmOBGok6KJY1h5x1emaRipTX9BU2rKgpXJehDWiheB
 6qpb+IR3HUn8c+wRl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_040102_572161_23CAEE58 
X-CRM114-Status: UNSURE (   6.90  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 kernel-janitors@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Wendy Liang <wendy.liang@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> So we should check whether the return value of devm_ioremap()
> is NULL instead of IS_ERR.

Will an other change description provide the preferred imperative wording?
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?id=96c9a7802af7d500a582d89a8b864584fe878c1b#n151

Regards,
Markus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
