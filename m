Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070C815881C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 03:05:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDB2QWtp6xyvToXbg2Oiqye1HuMfYkMlANh2unW8VtQ=; b=MmyfB5pzvgf1+w
	THMItGqfBdBXBoU0dTIWzq0rFX591/p6EtFKQ25MQoURjz3NYXy0n69QvLtDruMV1JMqQ4WZ4zrTI
	tQx/qQsSkIR+ovjg9fP7LWF+gaY7OU9RNTkr3DFp+L9m2FyTXIK6r8aHMCFlARoSbT+Ib5Do0eAxa
	AG7ZjAY+rUzJPAjOk6lzrS7FkDbr9uwmyLIz6LOxwbt2C59ygwLMvalheDhqrO18HEmZmwWr9Jqgp
	Szq7XV/03BKmesUIvvZDDDlLINlFjtYX4h0g6odvXYnNRgz7LRA2f6TaQ99yArN9iVZq4CrWh749r
	zI9NLUKzSStIECMQ4Hng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Kvs-0007kZ-No; Tue, 11 Feb 2020 02:05:48 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Kvi-0007jY-NE; Tue, 11 Feb 2020 02:05:40 +0000
X-UUID: e1d35294f99c4f52b464beb93db06c69-20200210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=7HU7BQfuPmn02GSFJASjaoD7BKMApKdh/cGvp+sXr44=; 
 b=nrqRBlx0ozXuRVDyhHs4yA8NY0l02AmCGaqxUwMyL9fTH+LeB96UJvLUBcdVL2WGcZHgK76VIh+JyKPgwmt3nUn7Cm7P0066ObU8DvU1oBk+DXfpUbJ7R625KJsXMR+pmU/oVQN/l6iWNoua0LOachtZOJGSrU1mZsUN/XDiI4s=;
X-UUID: e1d35294f99c4f52b464beb93db06c69-20200210
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 958903313; Mon, 10 Feb 2020 18:05:36 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Feb 2020 18:06:11 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Feb 2020 10:04:51 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Feb 2020 10:04:39 +0800
Message-ID: <1581386733.31005.6.camel@mtksdccf07>
Subject: Re: [PATCH v3,2/8] arm64: dts: mt8183: add/update dynamic power
 coefficients
From: Michael Kao <michael.kao@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 11 Feb 2020 10:05:33 +0800
In-Reply-To: <963f6a16-152f-f3b0-56fc-4edb3f1023f3@gmail.com>
References: <20200103064407.19861-1-michael.kao@mediatek.com>
 <20200103064407.19861-3-michael.kao@mediatek.com>
 <963f6a16-152f-f3b0-56fc-4edb3f1023f3@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_180538_762472_9E8655DC 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-01-10 at 15:40 +0100, Matthias Brugger wrote:
> I suppose it need rewording.

Hi Matthias,

This patch was resent following with the patch series,Add Mediatek
thermal driver and dtsi.
I have write all the changes in the cover letter.
There is no change in this patch.

Do you mean that I need to add some word to commit message or
change the dynamic power coefficients?

Best Regards,
Michael Kao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
