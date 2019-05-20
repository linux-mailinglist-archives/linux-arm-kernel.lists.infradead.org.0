Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADEA23350
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 14:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAsdUhg9pFW5nzE7ymhI/U8gRQnDMgSonW8/Xqfzupo=; b=Ph8bG6ty+tfVmC
	1MxjISHCGyHRnDzh4NJy1LZzhakO0gdRxprMGdgvDXR3JuSuOc07myyiMpmC3jxZDf/81qYDbQbqA
	WCSRsriv6Zc8Fu5jCPW8CZ1t8fqwo1fhDuLDl/2GeXoVeLEUzrOsGxDKPMFVkDH7oZwFkdRN6pUGn
	VoXZiGcDGKGG80lGrj6ACwA28/wty9/tC34izNxzLsIO/70OOcDMvJxfIegoC9YBIu5k5UVLOI750
	2CpAgQYcDOTAByEuLnVtXGW7Q6JQoNffbNz6lSCV38mnRGwQvGDK++ofV3+k8ULyONfYi5I3XXaPd
	JzzwhJNnsaHK8aKEHjKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hShCC-0000JS-Tq; Mon, 20 May 2019 12:15:12 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hShC4-000812-5q; Mon, 20 May 2019 12:15:05 +0000
Received: from [192.168.178.167] ([109.104.33.162]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MTRIi-1h5hDG1oZo-00Toay; Mon, 20 May 2019 14:14:30 +0200
Subject: Re: [RFC v2 3/5] clk: bcm2835: use firmware interface to update pllb
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-4-nsaenzjulienne@suse.de>
 <ebc78880-418f-f507-021c-41295113e041@i2se.com>
Message-ID: <35c11eae-4ebe-16aa-0d87-1858e90db5d6@i2se.com>
Date: Mon, 20 May 2019 14:14:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ebc78880-418f-f507-021c-41295113e041@i2se.com>
Content-Language: en-US
X-Provags-ID: V03:K1:Na5P1m+iImNGn5ACi7WqolQFQrJ+a+S2wYFesqD/c0odb8talYi
 dO/IlbSPb5CQQnX7py/vyFeG3JuNnBeXrPs2MX4FV7gvS3/JbCApn+cg6u/8p24CC9bwQIf
 3ToynHXvPnjXjrk5bROgbn+PUofrec0gNiO4gShhgPW8fodfI3RHwcKVkA0tCPYwTqXxZol
 w7aB96DY21wjqUUtu57Hg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oKzGkiXX4Zs=:7WB0oAy7PJ9WTHOuTM33H6
 1cmtaA/5o8RRNo14+64yWga0+CxcL3GybAl5TBqk6AUUsOIk7nJr2h38XRMAxTdBZfTtQ/UVZ
 qCk+wM3vnES9nMb6aJUrQp1tYe8653oL/g3Cst6xU7eSIbjFukpv/02/pCOQmmwOxqjqlRclQ
 9hpoOWHp945MRIG4sADRCQntxLMLLrI1ZItxKOXL2wIeSG5MT89sIzv58FsSAzmKPzB5GNsbm
 0zBUIqndTQiuItth9W981qti2oF2uOIDaPyq0xRug/6FieTxSJgEkuYskPReyYiN0GCyRb7d0
 M4ZBL8WHwHvI8IKSZBdOP9sNP1wpl/kW2ISM4FqgAF/W4Ydx9R/C221FFIUqQrfzz5IL/IfQi
 4Y5J0PlgmuFrOPJsfEwzZ9RgGPOwl90b73cyYD4IS7Ob5ymYwrFDPuSQpEHOMkmRVvY0wfD+F
 8EnbV35m5bXCUT58d8cJ/jeE892gQ970CRk4ijPe4IZrAIxScQvOxCsm783Jj0tZgkEz1fsz9
 t/qBH4tV981TWmW+M13DV5B70wtaessIzqf5c/ZLtAoits/NiCjOroK8enMH1ITlEBBboeoeG
 wcGOjDCr+3IWX40mGniyQS1FNBMlL+w7Rm2cW87mQ5H7AwF/goVEe64c9h3efnhw6BcBPl+th
 VVBGzPLyZAc2eapUibxCdh8h8EYBjZ7tN2pnjsfcCp+nQ6pN1y9J5QKGOCNPx6MgK1JOx8ug1
 HrZ2gD/JRsiivELtNumxdsDyAzKmr0l4ch0Vvt7TrZI/662gOVeWQTpVwD8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_051504_531368_317388FE 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.05.19 14:11, Stefan Wahren wrote:
>
> Please verify that the kernel still works (and this clock driver probe)
> under the following conditions:
>
> - CONFIG_RASPBERRYPI_FIRMWARE=n
> - CONFIG_RASPBERRYPI_FIRMWARE=m
> - older DTBs without patch #1
Sorry, i meant patch #4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
