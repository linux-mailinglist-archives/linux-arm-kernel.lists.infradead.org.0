Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3D8DAAF0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 13:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yzg4S3EJtseY/IfgkM+hIHJJ0BX2/GMzJhmfofz8miM=; b=JX66y13Ft1n2jx
	t9ZGePeprgBQRg89eFuwS7fYxlcJxRgXlqYChpYM7b+727893YtiRoKHzoJ4SxJen8iU/TXu1+1cY
	tRROUNp+pmtEgwFlRKi+znPwG9Eeu6M8r9G+QCK0htEKLy8ojX1C/lCn7+8VS8ktmDJwhJfQ0IGGK
	xWyZX0eCQZ3HwIzFKbIiK5feAD9IL9Hv9uq7GHn3d15uPluBfRym/s6OFpmAkICjNyh6l9tfxKhdh
	2rA9EdLaQi2WS9T5/kJXB9cw/Om3BEiBB48iHalaNAE7LQXit0IqIh65GH09Pv7mqpvVHRj6jatgn
	YqDWwnwgHOOGqhcRD6/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL3fb-0004PI-Uq; Thu, 17 Oct 2019 11:10:15 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL3fP-0003uA-4e
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 11:10:04 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9HBA2qh074180;
 Thu, 17 Oct 2019 06:10:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571310602;
 bh=36lj4RvL90wzg2T6qM8w0kFLM+Ly3Ln3Vm8scPP+eLA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=w0icLiUhM5cPQzrVzEak9HGrWAqTCJlfSHaTEes+LOXYLE2qgXTv1DdHLxIBGjwsv
 Mbo8S74dv/KXqDSh/I4SVRYLfMntc5fWBskhSTktN53r7xGKldY6N5XsQvC+0No1w6
 CrxuPLnI38/QIFDOrOWfYXHrKJ8NFHSH7W+RvgoI=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9HBA2lT103516
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Oct 2019 06:10:02 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 17
 Oct 2019 06:10:01 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 17 Oct 2019 06:10:01 -0500
Received: from [172.24.190.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HB9wrB092302;
 Thu, 17 Oct 2019 06:10:00 -0500
Subject: Re: [PATCH] ARM: davinci: dm365-evm: Add Fixed regulators needed for
 tlv320aic3101
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <bgolaszewski@baylibre.com>
References: <20190830102252.22488-1-peter.ujfalusi@ti.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <e2e10e39-aa21-1c53-75b2-18013937a841@ti.com>
Date: Thu, 17 Oct 2019 16:39:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830102252.22488-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_041003_284432_2CE149FE 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/08/19 3:52 PM, Peter Ujfalusi wrote:
> The codec driver needs correct regulators in order to probe.
> Both VCC_3V3 and VCC_1V8 is always on fixed regulators on the board.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Applied for v5.4

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
