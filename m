Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B00E6122417
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 06:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7n+sBtptCeuDp6tphZINSfMZdLMOJsMjCqL7l676LtM=; b=TgpQZU4fl6NVFQJUNTFjKe2v1w
	sutwvffsvOx4tDcS3hx8Mi1sabotTgQZQVe2oeF2OuzN4NMnY88gEcsw7Vh0PNIZZKFPdehUc68kk
	bXV/uPdM8VKeLbWGIyKrZGzF0v+6FgvT+VL4CwT2lNWzAjU4BsRFgnYDmOyrbMswtI1gTuUpmaSxb
	wLjI4s6NJEhbnzou6AnfGDMkLpzfR24sIE7axlyQRBXSYj0b0U8hk1+cvgobFTm7XKIdC2J+yYuAq
	eeyo7bNSkPvNqHA951zuuCTYSnhRwj+mv8xegcrWDlWEU0e+H46sKNL3I9Cb5ZHtTsWfQ6lA8T+8x
	yc3TiBOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih5m7-0000o2-JE; Tue, 17 Dec 2019 05:52:03 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih5lM-0000KJ-7n
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 05:51:20 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191217055110epoutp03ac17cb5b21ada5404998a55669c1d8a4~hEqr-lDIV0741107411epoutp03N
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 05:51:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191217055110epoutp03ac17cb5b21ada5404998a55669c1d8a4~hEqr-lDIV0741107411epoutp03N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576561870;
 bh=f8GptYMz1iqMlcd5COLxlT+bVBWK/10I9uvHucYbcOM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=V5OP47wceckDpfhFO0EpfRNoB08ajPkOyC8Iz6gRL9UYa+84Geo1oiwBIi9UX3uqG
 WaEo0OFwVso97+0zavhQoEzau+rUvuC3Ut9LsIfzcXDe8XnHvfPTBO12X/eXhyzygw
 FcO1F7pxw9KuWrHRQ1NXHaIhn03oTps0aSC8f/MY=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191217055109epcas1p355b34fcc0cf7a7e831e238e4da6864be~hEqrfGdmm1375413754epcas1p3j;
 Tue, 17 Dec 2019 05:51:09 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.153]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47cS1Q5x3xzMqYl4; Tue, 17 Dec
 2019 05:51:06 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 2F.64.48019.ACC68FD5; Tue, 17 Dec 2019 14:51:06 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191217055106epcas1p156b1323f4ec9f7c35fed825d56e577ff~hEqodiJv_2283622836epcas1p1r;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191217055106epsmtrp2ee6e4b35b16a7ffda5e8e317ae42d9ea~hEqocqLPQ1905819058epsmtrp2-;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
X-AuditID: b6c32a38-23fff7000001bb93-6e-5df86cca8c42
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 4E.5D.10238.ACC68FD5; Tue, 17 Dec 2019 14:51:06 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191217055106epsmtip1ab845fcfa8badb21b9d0ef1ff29c9133~hEqoMiUnc0093400934epsmtip1h;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH 6/9] PM / devfreq: rk3399_dmc: Replace deprecated
 'devfreq-events' property
Date: Tue, 17 Dec 2019 14:57:35 +0900
Message-Id: <20191217055738.28445-7-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217055738.28445-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFJsWRmVeSWpSXmKPExsWy7bCmge6pnB+xBl+2aVvcn9fKaHH9y3NW
 i/lHzrFa/H/0mtWi//FrZovz5zewW5xtesNuseLuR1aLTY+vsVpc3jWHzeJz7xFGi08P/jNb
 zDi/j8liYVMLu8XaI3fZLZZev8hkcbtxBZtF694j7A5CHmvmrWH02LSqk81j85J6j43vdjB5
 9G1Zxeix/do8Zo/Pm+QC2KOybTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPIS
 c1NtlVx8AnTdMnOA3lBSKEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFFgW6BUn5haX
 5qXrJefnWhkaGBiZAhUmZGfM/93GVrBPsGLT36vsDYwn+LoYOTkkBEwkHjy5xdLFyMUhJLCD
 UeLjre+MIAkhgU+MEs/6kiES3xgltrcvYobpmLzgHxtEYi+jxInW20wQzhdGicWHutlAqtgE
 tCT2v7gBZosI1EnMP7wDrIhZ4CaTxJ5Lt1i7GDk4hAViJdYcTgKpYRFQlXh95ibYBl4BK4ne
 g+9ZIbbJS6zecAAszilgLfF822uwORICv9kkDjSdYYMocpHYs+Uq1HnCEq+Ob2GHsKUkPr/b
 C1VTLbHy5BE2iOYORokt+y9AbTCW2L90MhPIQcwCmhLrd+lDhBUldv6eCw4LZgE+iXdfe8Bu
 lhDglehoE4IoUZa4/OAuE4QtKbG4vRNqlYfE0u2HoGHaxyhxu6GJcQKj3CyEDQsYGVcxiqUW
 FOempxYbFpggR9kmRnA61bLYwbjnnM8hRgEORiUeXomS77FCrIllxZW5hxglOJiVRHh3KACF
 eFMSK6tSi/Lji0pzUosPMZoCg3Iis5Rocj4w1eeVxBuaGhkbG1uYGJqZGhoqifNy/LgYKySQ
 nliSmp2aWpBaBNPHxMEp1cA4U82guXiO+971cW83x15fGqi3WMSul9G2Q8xNviTCbLpIKFvW
 baum/6Z1QnraJlJWQSYza812rUp1rppVYhM210uEc6ZY3+edt+9ffsex8+vPJzfkmCYEqgoz
 X7KeKLmmar96YPTWzgP7psvaHa7aUqPd/1jbfgWb7ZrZNYKZ5dVMu9LLE5RYijMSDbWYi4oT
 ATU1swq9AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMLMWRmVeSWpSXmKPExsWy7bCSnO6pnB+xBr0bhCzuz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FFcNimpOZllqUX6dglcGfN/t7EV7BOs2PT3KnsD4wm+LkZODgkB
 E4nJC/6xdTFycQgJ7GaUaPs2ixUiISkx7eJR5i5GDiBbWOLw4WKImk+MEnsXTWADqWET0JLY
 /+IGmC0i0MYoseS7HIjNLPCcSWJflxmILSwQLTFj4UOwGhYBVYnXZ24yg9i8AlYSvQffQ+2S
 l1i94QBYnFPAWuL5ttdMILYQUM3Pqc9YJzDyLWBkWMUomVpQnJueW2xYYJiXWq5XnJhbXJqX
 rpecn7uJERz0Wpo7GC8viT/EKMDBqMTDK1HyPVaINbGsuDL3EKMEB7OSCO8OBaAQb0piZVVq
 UX58UWlOavEhRmkOFiVx3qd5xyKFBNITS1KzU1MLUotgskwcnFINjGuCGYQWtT3g/hhvLjc1
 f19a/P453yc6KnPEzBR4mblUbuYkC56l6RuKHO1Z35m5/+V5nxovZhNnvuOm2F6Hno6+HVLV
 1Qxd5s8aZvrOyrup4nCWTVBsE5/y45tdojsjPn877rN+Cs/20Ov/Zi68U+y2eI1CIivnAlaR
 k9+NnM8a2h29G3dujxJLcUaioRZzUXEiADtK2A12AgAA
X-CMS-MailID: 20191217055106epcas1p156b1323f4ec9f7c35fed825d56e577ff
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191217055106epcas1p156b1323f4ec9f7c35fed825d56e577ff
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p156b1323f4ec9f7c35fed825d56e577ff@epcas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_215116_629248_4B17215E 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 kgene@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to remove the deprecated 'devfreq-events' property, replace with
new 'rockchip,dfi-device' property in order to get the devfreq-event device
in devicetree file instead of 'devfreq-events' property. But, to guarantee
the backward-compatibility, keep the support 'devfreq-events' property.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt | 4 ++--
 drivers/devfreq/rk3399_dmc.c                             | 9 ++++++---
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
index 0ec68141f85a..e484768a4077 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
@@ -2,7 +2,7 @@
 
 Required properties:
 - compatible:		 Must be "rockchip,rk3399-dmc".
-- devfreq-events:	 Node to get DDR loading, Refer to
+- rockchip,dfi-device:	 Node to get DDR loading, Refer to
 			 Documentation/devicetree/bindings/devfreq/event/
 			 rockchip-dfi.txt
 - clocks:		 Phandles for clock specified in "clock-names" property
@@ -173,7 +173,7 @@ Example:
 
 	dmc: dmc {
 		compatible = "rockchip,rk3399-dmc";
-		devfreq-events = <&dfi>;
+		rockchip,dfi-device = <&dfi>;
 		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_DDRCLK>;
 		clock-names = "dmc_clk";
diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 796272a208a8..5d007cb0643b 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -306,11 +306,14 @@ static int of_get_ddr_timings(struct dram_timing *timing,
 static struct devfreq_event_dev *get_edev_by_node(struct device_node *np,
 							int index)
 {
-	struct device_node *node = of_parse_phandle(np, "devfreq-events",
+	struct device_node *node = of_parse_phandle(np, "rockchip,dfi-device",
 							index);
 
-	if (!node)
-		return ERR_PTR(-ENODEV);
+	if (!node) {
+		node = of_parse_phandle(np, "devfreq-events", index);
+		if (!node)
+			return ERR_PTR(-ENODEV);
+	}
 	return devfreq_event_get_edev_by_node(node);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
