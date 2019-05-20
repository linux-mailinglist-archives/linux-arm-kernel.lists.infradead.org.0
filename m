Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4437823365
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 14:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dfkdquc/Czq+ReSRvfBAmVZJIEboKOCTqssYc9q0buA=; b=lSL3eUPcB5CqzS
	qmVeBI+J4s4qs2WlgstYX5FK5Q0e9GZnoa+JAdhaBrBFBZfuRat93NybF7hMnRT0Zx6YTpuUt6ApU
	EPa99ytiPnCitSQzAGE7ff0LYbzPfw8JsZ/87qy3mD0F5pxbrEDZC2KOX+Vl/UcqjXHy+0fsmuZbd
	klNnMM8hMsO61yvsOzHsb+LphXTjYeAiigg6CMNb0TrlyTMkwE3dLH57pOtadeW7V1wsSrNRhKbuj
	LCux9ozS/dbAmwxNVq8AqMR6fTOF5pO+gWQGtpg0xaS5WPnb/Ir7WOOvbLzJu6pS29hAaGgocNtKV
	Q4mtcreQA/fx844CCXbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hShGK-0001lx-Aw; Mon, 20 May 2019 12:19:28 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hShGD-0001ko-7q; Mon, 20 May 2019 12:19:22 +0000
Received: from [192.168.178.167] ([109.104.33.162]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MqsL3-1gpFl41RHl-00mrvz; Mon, 20 May 2019 14:19:07 +0200
Subject: Re: [RFC v2 4/5] dts: bcm2837: add per-cpu clock devices
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-5-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <af50c1e9-5f52-e06b-8d0b-c9f72fba1324@i2se.com>
Date: Mon, 20 May 2019 14:19:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520104708.11980-5-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:bNR85Xr5Ix+/N8OQzcAK+XY4eUmxwoteVwKocla9a9I7HzkvLcM
 /uiEboQgspShU1W4QTj7siUuy0oqooMehPTXT7eDhfGc4LVkxMDK8Ve1bX0/mEX0dvWe9cY
 ZBTCwKlQSXk3lfET5gAOnFazcF6lfCik5yk+iEsANhQDdrD/6+D6LHXfcPesRRjYroYeLA5
 r4Oi7dFGZg0MqE9xQ+Aeg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6J1Fp4MKs28=:EUhQ8mvrBMpbz/M+ADxWx3
 r/nxWy6+BZ9mkIz0Jn843As9r2wZB17pO/yhpXhG8Wcd6DfI3VO8BU+joDy00A6lI4nTkkvpb
 juD4rVnuBJvH8GH0iARDEgvNWwaj2NnvHhllrxCQsaD9F4LkHDbPlcDtCh9tBCLHHvlg2+CMi
 zo7li5BCz7kfnu6fh4mLkgG7/LlDT5OsIsePWv9qZvbt5oOkfJuRENFOVVFhml8ZKAEf576aV
 Uh4KmJ9u+g5H2zk1KqHGPfMt5Qgzsioxxjoa/kjddfijnYCtvBznCcemvh/OiGN4uJVZBKjbN
 dTv81y2YGx47evOYezaPrDgGCmDPICIaregOF4cCz40R1xoKKhF77HqsSDQKXs/WG6CBD+Eo5
 a2k2IKVKIEpfBK6NCkM4i2pUOU6aLtDYe0L4ocYMu+Y82Qg3GvFYvUYSmiQl3DRZ+TMCJhrNv
 mdvkgm7848M7em8ysrSzfVwYssutfMW11SojWGyXlgqEN6HeOXSKwbhzz3RnhhbkpKs5tF0Y0
 XJrrxF4+a5Ym/LrItbxkz53pjRwiOr+QirImQtfP+mA0gHI1DK5IKkMloFOZJWmjX5oavoAdN
 TRnAretttyb/aSU1GjCjDfUPBYsFoDCfFHHL0soDOkZL0Pq3zjA2QADigHSIquHz60uPPAYWv
 xmXaDQBQsoL1BguVHzwiFVpiEY1xf904cAZMJEEIRKeWCxWQxM81yyASMd1drUXqPdg096jtA
 4wM1Bfs/IbW91rTOPRpHtsyA76i1t7j850Kw3ZzTMdDk643oku66LbG8L0hLRUl59drWFpCcU
 HtB52UfDRRY9i4xIkEgI15kY27xVxBk1+4VSC1i7DK3ybJD3zSb+QTSnswW/27Q34u0eNWZ23
 vzkE8vSFO7liN76e2kHw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_051921_574593_6A80738D 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 ptesarik@suse.com, sboyd@kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 20.05.19 12:47, Nicolas Saenz Julienne wrote:
> The four CPUs share a same clock source called pllb_arm. The clock can
> be scaled through the raspberrypi firmware interface.
do you see a problem with applying this also to bcm2835.dtsi and
bcm2836.dtsi?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
