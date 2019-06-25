Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7655654EA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+d/n3pX+YJ8HFs1zNdOg5zqmziYkbLPH01q6F3UyqLM=; b=joRMGUmFPymW6M
	pnwRDUZ6N3UjCC9Lbs/Ks0j5a591Pb+V6gAoQypHRB/70cot0ivgz6mSIZgOZMLsH/3qXPd4a1cXL
	Sb1+vLV5whiqGEaykgTG66spTJTDdGy1jzmN2omHKDHg0ZymulpHKxPZh7J4XJkJhLyGL/ulMuqPP
	wUBlHL/KF+7WkSpC//YgDiWTB1GYsQ/iR3ViyxsubBJXPV7drenYGScZ3zhHTTzZbc2eZMLvfbUYm
	MfICLRg+ac0TZCd2nWyUeDj2iDF1dsG+ACHdHSGpC4RZ5aIwTsNdlibEvMquF+dhhpZL5AXdjnCYE
	Gk1kgVMeI9Zvc8o1LDsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkNY-0004L6-UA; Tue, 25 Jun 2019 12:16:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkNO-0004KZ-Uy; Tue, 25 Jun 2019 12:16:44 +0000
X-UUID: a0307d2fa28a4e8b975ead722abc71b5-20190625
X-UUID: a0307d2fa28a4e8b975ead722abc71b5-20190625
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <frederic.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1884322840; Tue, 25 Jun 2019 04:16:21 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Jun 2019 05:16:20 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Jun 2019 20:16:19 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 25 Jun 2019 20:16:18 +0800
Message-ID: <1561464978.23799.37.camel@mtksdccf07>
Subject: Re: [RFC PATCH V1 6/6] platform: mtk-isp: Add Mediatek DIP driver
From: Frederic Chen <frederic.chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 25 Jun 2019 20:16:18 +0800
In-Reply-To: <20190509094846.GA65444@google.com>
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-7-frederic.chen@mediatek.com>
 <20190509094846.GA65444@google.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_051643_004785_2B34949F 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 hans.verkuil@cisco.com, zwisler@chromium.org, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Tomasz,

Would you comment on the following points in further? Thank you for the
review.

On Thu, 2019-05-09 at 18:48 +0900, Tomasz Figa wrote:
> Hi Frederic,
> 

[snip]

> > +int mtk_dip_pipe_job_start(struct mtk_dip_pipe *dip_pipe,
> > +                          struct mtk_dip_pipe_job_info *pipe_job_info)
> > +{
> > +       struct platform_device *pdev = dip_pipe->dip_dev->pdev;
> > +       int ret;
> > +       int out_img_buf_idx;
> > +       struct img_ipi_frameparam dip_param;
> > +       struct mtk_dip_dev_buffer *dev_buf_in;
> > +       struct mtk_dip_dev_buffer *dev_buf_out;
> > +       struct mtk_dip_dev_buffer *dev_buf_tuning;
> > +
> > +       if (!pipe_job_info) {
> > +               dev_err(&pdev->dev,
> > +                       "pipe_job_info(%p) in start can't be NULL\n",
> > +                       pipe_job_info);
> > +               return -EINVAL;
> > +       }
> 
> This should be impossible to happen.
> 
> > +
> > +       /* We need RAW and at least MDP0 or MDP 1 buffer */
> > +       if (!pipe_job_info->buf_map[MTK_DIP_VIDEO_NODE_ID_RAW_OUT] ||
> > +           (!pipe_job_info->buf_map[MTK_DIP_VIDEO_NODE_ID_MDP0_CAPTURE] &&
> > +                !pipe_job_info->buf_map[MTK_DIP_VIDEO_NODE_ID_MDP1_CAPTURE])){
> > +               struct mtk_dip_dev_buffer **map = pipe_job_info->buf_map;
> > +
> > +               dev_dbg(&pdev->dev,
> > +                       "can't trigger job: raw(%p), mdp0(%p), mdp1(%p)\n",
> > +                       map[MTK_DIP_VIDEO_NODE_ID_RAW_OUT],
> > +                       map[MTK_DIP_VIDEO_NODE_ID_MDP0_CAPTURE],
> > +                       map[MTK_DIP_VIDEO_NODE_ID_MDP1_CAPTURE]);
> > +               return -EINVAL;
> 
> This must be validated at the time of request_validate. We can't fail at
> this stage anymore.

After the modification about checking the required buffers in
req_validate(), we got failed in the following testRequests()
of V4L2 compliance test. The V4L2 compliance test case doesn't know
which buffers of the video devices are required and expects that the
MEDIA_REQUEST_IOC_QUEUE succeed when the request has any valid buffer.

For example, when the request has MDP 0 buffer only, the DIP's
req_validate() should return an error since it also need a buffer
from RAW video device, but it make compliance test get failed.

May I still check the required buffers in req_validate() in the next
patch? I will add some note to explain that the compliance test failed
item is related to the limitation?

=======================================================
int testRequests(struct node *node, bool test_streaming)
// ......
if (i)
	fail_on_test(!buf.qbuf(node));
buf.s_flags(buf.g_flags() | V4L2_BUF_FLAG_REQUEST_FD);
buf.s_request_fd(buf_req_fds[i]);
buf.s_field(V4L2_FIELD_ANY);
fail_on_test(buf.qbuf(node));
if (v4l_type_is_video(buf.g_type()) && v4l_type_is_output(buf.g_type()))
	fail_on_test(buf.g_field() == V4L2_FIELD_ANY);
fail_on_test(buf.querybuf(node, i));

// ......

// LINE 1807 in v4l2-test-buffers.cpp, we will got the  failed here.
// Since we need one RAW and one MDP0 buffer at least.
// v4l2-test-buffers.cpp(1807): doioctl_fd(buf_req_fds[i],
// MEDIA_REQUEST_IOC_QUEUE, 0)
//	test Requests: FAIL
fail_on_test(doioctl_fd(buf_req_fds[i], MEDIA_REQUEST_IOC_QUEUE, 0));
=======================================================

> > +
> > +static int mtk_dip_vb2_queue_setup(struct vb2_queue *vq,
> > +                                  unsigned int *num_buffers,
> > +                                  unsigned int *num_planes,
> > +                                  unsigned int sizes[],
> > +                                  struct device *alloc_devs[])
> > +{
> > +       struct mtk_dip_pipe *dip_pipe = vb2_get_drv_priv(vq);
> > +       struct mtk_dip_video_device *node =
> > +               mtk_dip_vbq_to_node(vq);
> > +       struct device *dev = &dip_pipe->dip_dev->pdev->dev;
> > +       struct device *buf_alloc_ctx;
> > +

[snip]

> > +
> > +       if (vq->type == V4L2_BUF_TYPE_META_CAPTURE ||
> > +           vq->type == V4L2_BUF_TYPE_META_OUTPUT)
> > +               size = fmt->fmt.meta.buffersize;
> > +       else
> > +               size = fmt->fmt.pix_mp.plane_fmt[0].sizeimage;
> > +
> > +       if (*num_planes) {
> > +               if (sizes[0] < size) {
> > +                       dev_dbg(dev, "%s:%s:%s: size error(user:%d, max:%d)\n",
> > +                               __func__, dip_pipe->desc->name,
> > +                               node->desc->name, sizes[0], size);
> > +                       return -EINVAL;
> > +               }
> 
> I don't think this is an error. This is for handling VIDIOC_CREATE_BUFS,
> which can allocate for any arbitrary format.
> 
> Whether the size of the buffer is big enough for current format should be
> checked in .buf_prepare callback.

When executing V4L2 compliance test, we need to check this image size to
pass the following q.create_bufs() test (LINE:709,
v4l2-test-buffers.cpp).

========================================================
node->g_fmt(fmt, q.g_type());
//.... 
fmt.s_height(fmt.g_height() / 2);
for (unsigned p = 0; p < fmt.g_num_planes(); p++)
	fmt.s_sizeimage(fmt.g_sizeimage(p) / 2, p);

// LINE 709 in v4l2-test-buffers.cpp
// It seems that the driver needs to return EINVAL when the buffer 
//size is smaller than the sizeimage required
	fail_on_test(q.create_bufs(node, 1, &fmt) != EINVAL);
========================================================

The kernel document has some similar description on VIDIOC_CREATE_BUFS. 

https://www.kernel.org/doc/html/latest/media/uapi/v4l/vidioc-create-bufs.html

=======================================================
Usually if the format.pix.sizeimage field is less than the minimum
required for the given format, then an error will be returned since
drivers will typically not allow this.
=======================================================

Should we check the image size of each plane here so that we can pass
the test?

> 
> > +       } else {
> > +               *num_planes = 1;
> > +               sizes[0] = size;
> > +       }
> > +
> > +       dev_dbg(dev, "%s:%s:%s: n_planes(%d), n_bufs(%d), size(%d)\n",
> > +               __func__, dip_pipe->desc->name,
> > +               node->desc->name, *num_planes, *num_buffers, sizes[0]);
> > +
> > +       return 0;
> > +}
> > +


Sincerely,

Frederic Chen


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
